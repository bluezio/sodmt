/*
 * 
 */
package serviceComposition.diagram.edit.commands;

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.gmf.runtime.common.core.command.CommandResult;
import org.eclipse.gmf.runtime.emf.type.core.commands.EditElementCommand;
import org.eclipse.gmf.runtime.emf.type.core.requests.ReorientRelationshipRequest;

/**
 * @generated
 */
public class ActivityObjectFlowReorientCommand extends EditElementCommand {

	/**
	 * @generated
	 */
	private final int reorientDirection;

	/**
	 * @generated
	 */
	private final EObject oldEnd;

	/**
	 * @generated
	 */
	private final EObject newEnd;

	/**
	 * @generated
	 */
	public ActivityObjectFlowReorientCommand(ReorientRelationshipRequest request) {
		super(request.getLabel(), request.getRelationship(), request);
		reorientDirection = request.getDirection();
		oldEnd = request.getOldRelationshipEnd();
		newEnd = request.getNewRelationshipEnd();
	}

	/**
	 * @generated
	 */
	public boolean canExecute() {
		if (false == getElementToEdit() instanceof serviceComposition.ActivityObjectFlow) {
			return false;
		}
		if (reorientDirection == ReorientRelationshipRequest.REORIENT_SOURCE) {
			return canReorientSource();
		}
		if (reorientDirection == ReorientRelationshipRequest.REORIENT_TARGET) {
			return canReorientTarget();
		}
		return false;
	}

	/**
	 * @generated
	 */
	protected boolean canReorientSource() {
		if (!(oldEnd instanceof serviceComposition.FlowNode && newEnd instanceof serviceComposition.FlowNode)) {
			return false;
		}
		serviceComposition.FlowNode target = getLink().getTarget();
		if (!(getLink().eContainer() instanceof serviceComposition.ServiceComposition)) {
			return false;
		}
		serviceComposition.ServiceComposition container = (serviceComposition.ServiceComposition) getLink()
				.eContainer();
		return serviceComposition.diagram.edit.policies.ServiceCompositionBaseItemSemanticEditPolicy
				.getLinkConstraints().canExistActivityObjectFlow_4012(
						container, getLink(), getNewSource(), target);
	}

	/**
	 * @generated
	 */
	protected boolean canReorientTarget() {
		if (!(oldEnd instanceof serviceComposition.FlowNode && newEnd instanceof serviceComposition.FlowNode)) {
			return false;
		}
		serviceComposition.FlowNode source = getLink().getSource();
		if (!(getLink().eContainer() instanceof serviceComposition.ServiceComposition)) {
			return false;
		}
		serviceComposition.ServiceComposition container = (serviceComposition.ServiceComposition) getLink()
				.eContainer();
		return serviceComposition.diagram.edit.policies.ServiceCompositionBaseItemSemanticEditPolicy
				.getLinkConstraints().canExistActivityObjectFlow_4012(
						container, getLink(), source, getNewTarget());
	}

	/**
	 * @generated
	 */
	protected CommandResult doExecuteWithResult(IProgressMonitor monitor,
			IAdaptable info) throws ExecutionException {
		if (!canExecute()) {
			throw new ExecutionException(
					"Invalid arguments in reorient link command"); //$NON-NLS-1$
		}
		if (reorientDirection == ReorientRelationshipRequest.REORIENT_SOURCE) {
			return reorientSource();
		}
		if (reorientDirection == ReorientRelationshipRequest.REORIENT_TARGET) {
			return reorientTarget();
		}
		throw new IllegalStateException();
	}

	/**
	 * @generated
	 */
	protected CommandResult reorientSource() throws ExecutionException {
		getLink().setSource(getNewSource());
		return CommandResult.newOKCommandResult(getLink());
	}

	/**
	 * @generated
	 */
	protected CommandResult reorientTarget() throws ExecutionException {
		getLink().setTarget(getNewTarget());
		return CommandResult.newOKCommandResult(getLink());
	}

	/**
	 * @generated
	 */
	protected serviceComposition.ActivityObjectFlow getLink() {
		return (serviceComposition.ActivityObjectFlow) getElementToEdit();
	}

	/**
	 * @generated
	 */
	protected serviceComposition.FlowNode getOldSource() {
		return (serviceComposition.FlowNode) oldEnd;
	}

	/**
	 * @generated
	 */
	protected serviceComposition.FlowNode getNewSource() {
		return (serviceComposition.FlowNode) newEnd;
	}

	/**
	 * @generated
	 */
	protected serviceComposition.FlowNode getOldTarget() {
		return (serviceComposition.FlowNode) oldEnd;
	}

	/**
	 * @generated
	 */
	protected serviceComposition.FlowNode getNewTarget() {
		return (serviceComposition.FlowNode) newEnd;
	}
}
