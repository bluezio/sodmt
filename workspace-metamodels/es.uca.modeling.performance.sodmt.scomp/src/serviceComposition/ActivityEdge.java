/**
 */
package serviceComposition;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Activity Edge</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link serviceComposition.ActivityEdge#getSource <em>Source</em>}</li>
 *   <li>{@link serviceComposition.ActivityEdge#getTarget <em>Target</em>}</li>
 * </ul>
 * </p>
 *
 * @see serviceComposition.ServiceCompositionPackage#getActivityEdge()
 * @model abstract="true"
 *        annotation="gmf.link source='source' target='target' width='3' target.decoration='arrow'"
 * @generated
 */
public interface ActivityEdge extends EObject
{
  /**
   * Returns the value of the '<em><b>Source</b></em>' reference.
   * It is bidirectional and its opposite is '{@link serviceComposition.ActivityNode#getOutgoing <em>Outgoing</em>}'.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Source</em>' reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Source</em>' reference.
   * @see #setSource(ActivityNode)
   * @see serviceComposition.ServiceCompositionPackage#getActivityEdge_Source()
   * @see serviceComposition.ActivityNode#getOutgoing
   * @model opposite="outgoing"
   * @generated
   */
  ActivityNode getSource();

  /**
   * Sets the value of the '{@link serviceComposition.ActivityEdge#getSource <em>Source</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Source</em>' reference.
   * @see #getSource()
   * @generated
   */
  void setSource(ActivityNode value);

  /**
   * Returns the value of the '<em><b>Target</b></em>' reference.
   * It is bidirectional and its opposite is '{@link serviceComposition.ActivityNode#getIncoming <em>Incoming</em>}'.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Target</em>' reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Target</em>' reference.
   * @see #setTarget(ActivityNode)
   * @see serviceComposition.ServiceCompositionPackage#getActivityEdge_Target()
   * @see serviceComposition.ActivityNode#getIncoming
   * @model opposite="incoming"
   * @generated
   */
  ActivityNode getTarget();

  /**
   * Sets the value of the '{@link serviceComposition.ActivityEdge#getTarget <em>Target</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Target</em>' reference.
   * @see #getTarget()
   * @generated
   */
  void setTarget(ActivityNode value);

} // ActivityEdge
