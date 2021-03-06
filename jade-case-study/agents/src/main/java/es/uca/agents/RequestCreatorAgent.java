/**
 * Copyright (C) 2013 Antonio García-Domínguez.
 *
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *     Antonio García-Domínguez - initial API and implementation
 */
package es.uca.agents;

import jade.content.AgentAction;
import jade.content.lang.Codec;
import jade.content.lang.Codec.CodecException;
import jade.content.lang.sl.SLCodec;
import jade.content.onto.OntologyException;
import jade.content.onto.basic.Action;
import jade.content.onto.basic.Result;
import jade.core.Agent;
import jade.core.behaviours.CyclicBehaviour;
import jade.domain.DFService;
import jade.domain.FIPAException;
import jade.domain.FIPANames;
import jade.domain.FIPAAgentManagement.DFAgentDescription;
import jade.domain.FIPAAgentManagement.FIPAManagementOntology;
import jade.domain.FIPAAgentManagement.NotUnderstoodException;
import jade.domain.FIPAAgentManagement.Property;
import jade.domain.FIPAAgentManagement.ServiceDescription;
import jade.lang.acl.ACLMessage;
import jade.lang.acl.MessageTemplate;
import jade.wrapper.StaleProxyException;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import es.uca.agents.ontology.ProductionOntology;
import es.uca.agents.ontology.actions.ListOrders;
import es.uca.agents.ontology.actions.Manufacture;
import es.uca.agents.ontology.actions.ReportStatus;
import es.uca.agents.ontology.concepts.OrderConfirmation;
import es.uca.agents.ontology.concepts.OrderStatus;

public class RequestCreatorAgent extends Agent {
	private static final long serialVersionUID = 1L;
	private static final String WSIG_HIER = "wsig-hierarchical-type";
	private static final String WSIG = "wsig";

	private static final Logger LOGGER = LoggerFactory.getLogger(RequestCreatorAgent.class);

	private static final class RequestServer extends CyclicBehaviour {
		private static final long serialVersionUID = 1L;
		private static final MessageTemplate MSG_TEMPLATE
			= MessageTemplate.MatchOntology(ProductionOntology.NAME);

		private int orderNo = 1;
		private Map<String, OrderStatus> statuses = new HashMap<String, OrderStatus>();

		@Override
		public void action() {
			ACLMessage msg = myAgent.receive(MSG_TEMPLATE);
			if (msg != null) {
				LOGGER.info("Received query");
				LOGGER.debug("Query content is: {}", msg.getContent());
				ACLMessage reply;
				try {
					reply = handleRequest(msg);
				} catch (NotUnderstoodException e) {
					reply = msg.createReply();
					reply.setPerformative(ACLMessage.NOT_UNDERSTOOD);
					LOGGER.error("Did not understand the request", e);
				}
				myAgent.send(reply);
			} else {
				block();
			}
		}

		private ACLMessage handleRequest(ACLMessage request) throws NotUnderstoodException {
			AgentAction agAct = null;
			try {
				Action act = (Action) myAgent.getContentManager().extractContent(request);
				agAct = (AgentAction)act.getAction();
			} catch (Exception e) {
				LOGGER.error("Could not understand the request", e);
			}

			try {
				if (agAct instanceof Manufacture) {
					return handleManufacture(request, (Manufacture)agAct);
				}
				else if (agAct instanceof ReportStatus) {
					return handleOrderStatus(request, (ReportStatus)agAct);
				}
				else if (agAct instanceof ListOrders) {
					return handleListOrders(request, (ListOrders)agAct);
				}
			} catch (Exception e) {
				LOGGER.error("Could not reply to the request", e);
				ACLMessage reply = request.createReply();
				reply.setPerformative(ACLMessage.FAILURE);
				return reply;
			}

			throw new NotUnderstoodException(request);
		}

		private ACLMessage handleListOrders(ACLMessage request, ListOrders action)
				throws CodecException, OntologyException
		{
			jade.util.leap.ArrayList l = new jade.util.leap.ArrayList();
			l.fromList(new ArrayList<String>(statuses.keySet()));

			ACLMessage reply = request.createReply();
			reply.setPerformative(ACLMessage.INFORM);
			myAgent.getContentManager().fillContent(reply, new Result(action, l));
			return reply;
		}

		private ACLMessage handleOrderStatus(ACLMessage request, ReportStatus action)
				throws CodecException, OntologyException
		{
			final String oID = action.getOrderID();

			LOGGER.info("Received status update on order {}", oID);
			final OrderStatus status = statuses.get(oID);

			ACLMessage reply = request.createReply();
			if (status == null) {
				LOGGER.warn("Cannot report status of order {}: it does not exist", oID);
				reply.setPerformative(ACLMessage.FAILURE);
			}
			else {
				LOGGER.debug("Found status for order {}", oID);
				reply.setPerformative(ACLMessage.INFORM);
				myAgent.getContentManager().fillContent(reply, new Result(action, status));
			}
			
			return reply;
		}

		private ACLMessage handleManufacture(ACLMessage request, Manufacture action)
				throws CodecException, OntologyException, StaleProxyException
		{
			OrderConfirmation r = new OrderConfirmation();
			r.setNewOrderID("order" + orderNo++);

			OrderStatus s = new OrderStatus(r.getNewOrderID(),
				action.getOrder().getProductID(),
				action.getOrder().getQuantity());
			statuses.put(r.getNewOrderID(), s);

			myAgent.getContainerController().createNewAgent(
				r.getNewOrderID(),
				OrderAgent.class.getName(),
				new Object[] {r.getNewOrderID(), action.getOrder()});

			ACLMessage reply = request.createReply();
			reply.setPerformative(ACLMessage.INFORM);
			myAgent.getContentManager().fillContent(reply, new Result(action, r));

			return reply;
		}
	}

	private Codec codec = new SLCodec();

	@Override
	protected void setup() {
		LOGGER.info("Setup starting for agent {}", getLocalName());

		getContentManager().registerLanguage(codec);
		getContentManager().registerOntology(FIPAManagementOntology.getInstance());
		getContentManager().registerOntology(ProductionOntology.getInstance());

		try {
			DFAgentDescription dfad = createDFDescription();
			DFService.register(this, dfad);
		} catch (FIPAException e) {
			LOGGER.error("Could not register in DF", e);
			doDelete();
			return;
		}
		LOGGER.info("Successfully registered in DF");

		addBehaviour(new RequestServer());

		LOGGER.info("Setup completed");
	}

	@Override
	protected void takeDown() {
		try {
			DFService.deregister(this);
		} catch (FIPAException e) {
			LOGGER.error("Could not deregister from the DF", e);
		}
	}

	private DFAgentDescription createDFDescription() {
		ServiceDescription sd = new ServiceDescription();
		sd.addLanguages(codec.getName());
		sd.addProtocols(FIPANames.InteractionProtocol.FIPA_REQUEST);
		sd.setType("OrderCreator");
		sd.setOwnership("OrderCreatorOwner");
		sd.setName("orders");
		sd.addOntologies(ProductionOntology.NAME);

		// Expose the agent as a web service (WSIG_HIER is needed since we use a bean ontology)
		sd.addProperties(new Property(WSIG, "true"));
		sd.addProperties(new Property(WSIG_HIER, "true"));

		DFAgentDescription dfad = new DFAgentDescription();
		dfad.setName(getAID());
		dfad.addLanguages(codec.getName());
		dfad.addProtocols(FIPANames.InteractionProtocol.FIPA_REQUEST);
		dfad.addServices(sd);
		return dfad;
	}
}
