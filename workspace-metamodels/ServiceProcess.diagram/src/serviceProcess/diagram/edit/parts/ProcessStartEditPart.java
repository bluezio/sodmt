/*
 * 
 */
package serviceProcess.diagram.edit.parts;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import org.eclipse.draw2d.IFigure;
import org.eclipse.draw2d.PositionConstants;
import org.eclipse.draw2d.Shape;
import org.eclipse.draw2d.StackLayout;
import org.eclipse.draw2d.geometry.Dimension;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.gef.EditPart;
import org.eclipse.gef.EditPolicy;
import org.eclipse.gef.Request;
import org.eclipse.gef.commands.Command;
import org.eclipse.gef.editpolicies.LayoutEditPolicy;
import org.eclipse.gef.editpolicies.NonResizableEditPolicy;
import org.eclipse.gef.editpolicies.ResizableEditPolicy;
import org.eclipse.gef.requests.CreateRequest;
import org.eclipse.gmf.runtime.diagram.ui.editparts.IGraphicalEditPart;
import org.eclipse.gmf.runtime.diagram.ui.editparts.ShapeNodeEditPart;
import org.eclipse.gmf.runtime.diagram.ui.editpolicies.EditPolicyRoles;
import org.eclipse.gmf.runtime.emf.type.core.IElementType;
import org.eclipse.gmf.runtime.gef.ui.figures.DefaultSizeNodeFigure;
import org.eclipse.gmf.runtime.gef.ui.figures.NodeFigure;
import org.eclipse.gmf.runtime.notation.View;
import org.eclipse.swt.graphics.Color;

import es.uca.modeling.figures.FgFilledCircleFigure;

/**
 * @generated
 */
public class ProcessStartEditPart extends ShapeNodeEditPart {

	/**
	 * @generated
	 */
	public static final int VISUAL_ID = 2020;

	/**
	 * @generated
	 */
	protected IFigure contentPane;

	/**
	 * @generated
	 */
	protected IFigure primaryShape;

	/**
	 * @generated
	 */
	public ProcessStartEditPart(View view) {
		super(view);
	}

	/**
	 * @generated
	 */
	protected void createDefaultEditPolicies() {
		super.createDefaultEditPolicies();
		installEditPolicy(
				EditPolicyRoles.SEMANTIC_ROLE,
				new serviceProcess.diagram.edit.policies.ProcessStartItemSemanticEditPolicy());
		installEditPolicy(EditPolicy.LAYOUT_ROLE, createLayoutEditPolicy());
		// XXX need an SCR to runtime to have another abstract superclass that would let children add reasonable editpolicies
		// removeEditPolicy(org.eclipse.gmf.runtime.diagram.ui.editpolicies.EditPolicyRoles.CONNECTION_HANDLES_ROLE);
	}

	/**
	 * @generated
	 */
	protected LayoutEditPolicy createLayoutEditPolicy() {
		org.eclipse.gmf.runtime.diagram.ui.editpolicies.LayoutEditPolicy lep = new org.eclipse.gmf.runtime.diagram.ui.editpolicies.LayoutEditPolicy() {

			protected EditPolicy createChildEditPolicy(EditPart child) {
				EditPolicy result = child
						.getEditPolicy(EditPolicy.PRIMARY_DRAG_ROLE);
				if (result == null) {
					result = new NonResizableEditPolicy();
				}
				return result;
			}

			protected Command getMoveChildrenCommand(Request request) {
				return null;
			}

			protected Command getCreateCommand(CreateRequest request) {
				return null;
			}
		};
		return lep;
	}

	/**
	 * @generated
	 */
	protected IFigure createNodeShape() {
		return primaryShape = new ProcessStartFigure();
	}

	/**
	 * @generated
	 */
	public ProcessStartFigure getPrimaryShape() {
		return (ProcessStartFigure) primaryShape;
	}

	/**
	 * @generated
	 */
	protected NodeFigure createNodePlate() {
		DefaultSizeNodeFigure result = new DefaultSizeNodeFigure(30, 30);
		return result;
	}

	/**
	 * @generated
	 */
	public EditPolicy getPrimaryDragEditPolicy() {
		EditPolicy result = super.getPrimaryDragEditPolicy();
		if (result instanceof ResizableEditPolicy) {
			ResizableEditPolicy ep = (ResizableEditPolicy) result;
			ep.setResizeDirections(PositionConstants.NONE);
		}
		return result;
	}

	/**
	 * Creates figure for this edit part.
	 * 
	 * Body of this method does not depend on settings in generation model
	 * so you may safely remove <i>generated</i> tag and modify it.
	 * 
	 * @generated
	 */
	protected NodeFigure createNodeFigure() {
		NodeFigure figure = createNodePlate();
		figure.setLayoutManager(new StackLayout());
		IFigure shape = createNodeShape();
		figure.add(shape);
		contentPane = setupContentPane(shape);
		return figure;
	}

	/**
	 * Default implementation treats passed figure as content pane.
	 * Respects layout one may have set for generated figure.
	 * @param nodeShape instance of generated figure class
	 * @generated
	 */
	protected IFigure setupContentPane(IFigure nodeShape) {
		return nodeShape; // use nodeShape itself as contentPane
	}

	/**
	 * @generated
	 */
	public IFigure getContentPane() {
		if (contentPane != null) {
			return contentPane;
		}
		return super.getContentPane();
	}

	/**
	 * @generated
	 */
	protected void setForegroundColor(Color color) {
		if (primaryShape != null) {
			primaryShape.setForegroundColor(color);
		}
	}

	/**
	 * @generated
	 */
	protected void setBackgroundColor(Color color) {
		if (primaryShape != null) {
			primaryShape.setBackgroundColor(color);
		}
	}

	/**
	 * @generated
	 */
	protected void setLineWidth(int width) {
		if (primaryShape instanceof Shape) {
			((Shape) primaryShape).setLineWidth(width);
		}
	}

	/**
	 * @generated
	 */
	protected void setLineType(int style) {
		if (primaryShape instanceof Shape) {
			((Shape) primaryShape).setLineStyle(style);
		}
	}

	/**
	 * @generated
	 */
	public List<IElementType> getMARelTypesOnSource() {
		ArrayList<IElementType> types = new ArrayList<IElementType>(1);
		types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessControlFlow_4005);
		return types;
	}

	/**
	 * @generated
	 */
	public List<IElementType> getMARelTypesOnSourceAndTarget(
			IGraphicalEditPart targetEditPart) {
		LinkedList<IElementType> types = new LinkedList<IElementType>();
		if (targetEditPart instanceof serviceProcess.diagram.edit.parts.ServiceActivityEditPart) {
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessControlFlow_4005);
		}
		if (targetEditPart instanceof serviceProcess.diagram.edit.parts.ProcessStartEditPart) {
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessControlFlow_4005);
		}
		if (targetEditPart instanceof serviceProcess.diagram.edit.parts.ProcessFinishEditPart) {
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessControlFlow_4005);
		}
		if (targetEditPart instanceof serviceProcess.diagram.edit.parts.ProcessDecisionEditPart) {
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessControlFlow_4005);
		}
		if (targetEditPart instanceof serviceProcess.diagram.edit.parts.ProcessForkEditPart) {
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessControlFlow_4005);
		}
		if (targetEditPart instanceof serviceProcess.diagram.edit.parts.ProcessJoinEditPart) {
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessControlFlow_4005);
		}
		return types;
	}

	/**
	 * @generated
	 */
	public List<IElementType> getMATypesForTarget(IElementType relationshipType) {
		LinkedList<IElementType> types = new LinkedList<IElementType>();
		if (relationshipType == serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessControlFlow_4005) {
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ServiceActivity_2019);
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessStart_2020);
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessFinish_2021);
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessDecision_2022);
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessFork_2023);
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessJoin_2024);
		}
		return types;
	}

	/**
	 * @generated
	 */
	public List<IElementType> getMARelTypesOnTarget() {
		ArrayList<IElementType> types = new ArrayList<IElementType>(1);
		types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessControlFlow_4005);
		return types;
	}

	/**
	 * @generated
	 */
	public List<IElementType> getMATypesForSource(IElementType relationshipType) {
		LinkedList<IElementType> types = new LinkedList<IElementType>();
		if (relationshipType == serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessControlFlow_4005) {
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ServiceActivity_2019);
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessStart_2020);
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessFinish_2021);
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessDecision_2022);
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessFork_2023);
			types.add(serviceProcess.diagram.providers.ServiceProcessElementTypes.ProcessJoin_2024);
		}
		return types;
	}

	/**
	 * @generated
	 */
	protected void handleNotificationEvent(Notification event) {
		if (event.getNotifier() == getModel()
				&& EcorePackage.eINSTANCE.getEModelElement_EAnnotations()
						.equals(event.getFeature())) {
			handleMajorSemanticChange();
		} else {
			super.handleNotificationEvent(event);
		}
	}

	/**
	 * @generated
	 */
	public class ProcessStartFigure extends FgFilledCircleFigure {

		/**
		 * @generated
		 */
		public ProcessStartFigure() {
			this.setForegroundColor(THIS_FORE);
			this.setPreferredSize(new Dimension(getMapMode().DPtoLP(30),
					getMapMode().DPtoLP(30)));
		}

	}

	/**
	 * @generated
	 */
	static final Color THIS_FORE = new Color(null, 0, 0, 0);

}
