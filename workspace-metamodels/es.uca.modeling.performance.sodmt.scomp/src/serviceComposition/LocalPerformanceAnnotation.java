/**
 */
package serviceComposition;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Local Performance Annotation</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link serviceComposition.LocalPerformanceAnnotation#getMinimumTime <em>Minimum Time</em>}</li>
 *   <li>{@link serviceComposition.LocalPerformanceAnnotation#getWeight <em>Weight</em>}</li>
 *   <li>{@link serviceComposition.LocalPerformanceAnnotation#getExecNode <em>Exec Node</em>}</li>
 * </ul>
 * </p>
 *
 * @see serviceComposition.ServiceCompositionPackage#getLocalPerformanceAnnotation()
 * @model annotation="gmf.node label.pattern='\253lpc\273' tool.name='Local Performance Constraint'"
 * @generated
 */
public interface LocalPerformanceAnnotation extends PerformanceAnnotation, ActivityNode
{
  /**
   * Returns the value of the '<em><b>Minimum Time</b></em>' attribute.
   * The default value is <code>"0"</code>.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Minimum Time</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Minimum Time</em>' attribute.
   * @see #setMinimumTime(double)
   * @see serviceComposition.ServiceCompositionPackage#getLocalPerformanceAnnotation_MinimumTime()
   * @model default="0"
   *        annotation="gmf.label label.view.pattern='minimum = {0}' label.edit.pattern='{0, number}'"
   * @generated
   */
  double getMinimumTime();

  /**
   * Sets the value of the '{@link serviceComposition.LocalPerformanceAnnotation#getMinimumTime <em>Minimum Time</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Minimum Time</em>' attribute.
   * @see #getMinimumTime()
   * @generated
   */
  void setMinimumTime(double value);

  /**
   * Returns the value of the '<em><b>Weight</b></em>' attribute.
   * The default value is <code>"1"</code>.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Weight</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Weight</em>' attribute.
   * @see #setWeight(double)
   * @see serviceComposition.ServiceCompositionPackage#getLocalPerformanceAnnotation_Weight()
   * @model default="1"
   *        annotation="gmf.label label.view.pattern='weight = {0}' label.edit.pattern='{0, number}'"
   * @generated
   */
  double getWeight();

  /**
   * Sets the value of the '{@link serviceComposition.LocalPerformanceAnnotation#getWeight <em>Weight</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Weight</em>' attribute.
   * @see #getWeight()
   * @generated
   */
  void setWeight(double value);

  /**
   * Returns the value of the '<em><b>Exec Node</b></em>' reference.
   * It is bidirectional and its opposite is '{@link serviceComposition.ExecutableNode#getAnnotation <em>Annotation</em>}'.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Exec Node</em>' reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Exec Node</em>' reference.
   * @see #setExecNode(ExecutableNode)
   * @see serviceComposition.ServiceCompositionPackage#getLocalPerformanceAnnotation_ExecNode()
   * @see serviceComposition.ExecutableNode#getAnnotation
   * @model opposite="annotation"
   * @generated
   */
  ExecutableNode getExecNode();

  /**
   * Sets the value of the '{@link serviceComposition.LocalPerformanceAnnotation#getExecNode <em>Exec Node</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Exec Node</em>' reference.
   * @see #getExecNode()
   * @generated
   */
  void setExecNode(ExecutableNode value);

} // LocalPerformanceAnnotation