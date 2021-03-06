/**
 */
package serviceComposition.provider;


import java.util.Collection;
import java.util.List;

import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.common.util.ResourceLocator;

import org.eclipse.emf.ecore.EStructuralFeature;

import org.eclipse.emf.edit.provider.IEditingDomainItemProvider;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.IItemPropertySource;
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;
import org.eclipse.emf.edit.provider.ItemProviderAdapter;
import org.eclipse.emf.edit.provider.ViewerNotification;

import serviceComposition.ServiceComposition;
import serviceComposition.ServiceCompositionFactory;
import serviceComposition.ServiceCompositionPackage;

/**
 * This is the item provider adapter for a {@link serviceComposition.ServiceComposition} object.
 * <!-- begin-user-doc -->
 * <!-- end-user-doc -->
 * @generated
 */
public class ServiceCompositionItemProvider
  extends ItemProviderAdapter
  implements
    IEditingDomainItemProvider,
    IStructuredItemContentProvider,
    ITreeItemContentProvider,
    IItemLabelProvider,
    IItemPropertySource
{
  /**
   * This constructs an instance from a factory and a notifier.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ServiceCompositionItemProvider(AdapterFactory adapterFactory)
  {
    super(adapterFactory);
  }

  /**
   * This returns the property descriptors for the adapted class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public List<IItemPropertyDescriptor> getPropertyDescriptors(Object object)
  {
    if (itemPropertyDescriptors == null)
    {
      super.getPropertyDescriptors(object);

    }
    return itemPropertyDescriptors;
  }

  /**
   * This specifies how to implement {@link #getChildren} and is used to deduce an appropriate feature for an
   * {@link org.eclipse.emf.edit.command.AddCommand}, {@link org.eclipse.emf.edit.command.RemoveCommand} or
   * {@link org.eclipse.emf.edit.command.MoveCommand} in {@link #createCommand}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Collection<? extends EStructuralFeature> getChildrenFeatures(Object object)
  {
    if (childrenFeatures == null)
    {
      super.getChildrenFeatures(object);
      childrenFeatures.add(ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__PARTITIONS);
      childrenFeatures.add(ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__NODES);
      childrenFeatures.add(ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__EDGES);
      childrenFeatures.add(ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__PROCESS_PERFORMANCE);
    }
    return childrenFeatures;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected EStructuralFeature getChildFeature(Object object, Object child)
  {
    // Check the type of the specified child object and return the proper feature to use for
    // adding (see {@link AddCommand}) it as a child.

    return super.getChildFeature(object, child);
  }

  /**
   * This returns ServiceComposition.gif.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object getImage(Object object)
  {
    return overlayImage(object, getResourceLocator().getImage("full/obj16/ServiceComposition"));
  }

  /**
   * This returns the label text for the adapted class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String getText(Object object)
  {
    return getString("_UI_ServiceComposition_type");
  }

  /**
   * This handles model notifications by calling {@link #updateChildren} to update any cached
   * children and by creating a viewer notification, which it passes to {@link #fireNotifyChanged}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void notifyChanged(Notification notification)
  {
    updateChildren(notification);

    switch (notification.getFeatureID(ServiceComposition.class))
    {
      case ServiceCompositionPackage.SERVICE_COMPOSITION__PARTITIONS:
      case ServiceCompositionPackage.SERVICE_COMPOSITION__NODES:
      case ServiceCompositionPackage.SERVICE_COMPOSITION__EDGES:
      case ServiceCompositionPackage.SERVICE_COMPOSITION__PROCESS_PERFORMANCE:
        fireNotifyChanged(new ViewerNotification(notification, notification.getNotifier(), true, false));
        return;
    }
    super.notifyChanged(notification);
  }

  /**
   * This adds {@link org.eclipse.emf.edit.command.CommandParameter}s describing the children
   * that can be created under this object.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected void collectNewChildDescriptors(Collection<Object> newChildDescriptors, Object object)
  {
    super.collectNewChildDescriptors(newChildDescriptors, object);

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__PARTITIONS,
         ServiceCompositionFactory.eINSTANCE.createActivityPartition()));

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__NODES,
         ServiceCompositionFactory.eINSTANCE.createLocalPerformanceAnnotation()));

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__NODES,
         ServiceCompositionFactory.eINSTANCE.createAction()));

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__NODES,
         ServiceCompositionFactory.eINSTANCE.createStructuredActivityNode()));

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__NODES,
         ServiceCompositionFactory.eINSTANCE.createObjectNode()));

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__NODES,
         ServiceCompositionFactory.eINSTANCE.createInitialNode()));

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__NODES,
         ServiceCompositionFactory.eINSTANCE.createFinalNode()));

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__NODES,
         ServiceCompositionFactory.eINSTANCE.createDecisionNode()));

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__NODES,
         ServiceCompositionFactory.eINSTANCE.createForkNode()));

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__NODES,
         ServiceCompositionFactory.eINSTANCE.createJoinNode()));

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__NODES,
         ServiceCompositionFactory.eINSTANCE.createMergeNode()));

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__EDGES,
         ServiceCompositionFactory.eINSTANCE.createControlFlow()));

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__EDGES,
         ServiceCompositionFactory.eINSTANCE.createObjectFlow()));

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__PROCESS_PERFORMANCE,
         ServiceCompositionFactory.eINSTANCE.createPerformanceAnnotation()));

    newChildDescriptors.add
      (createChildParameter
        (ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__PROCESS_PERFORMANCE,
         ServiceCompositionFactory.eINSTANCE.createLocalPerformanceAnnotation()));
  }

  /**
   * This returns the label text for {@link org.eclipse.emf.edit.command.CreateChildCommand}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String getCreateChildText(Object owner, Object feature, Object child, Collection<?> selection)
  {
    Object childFeature = feature;
    Object childObject = child;

    boolean qualify =
      childFeature == ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__NODES ||
      childFeature == ServiceCompositionPackage.Literals.SERVICE_COMPOSITION__PROCESS_PERFORMANCE;

    if (qualify)
    {
      return getString
        ("_UI_CreateChild_text2",
         new Object[] { getTypeText(childObject), getFeatureText(childFeature), getTypeText(owner) });
    }
    return super.getCreateChildText(owner, feature, child, selection);
  }

  /**
   * Return the resource locator for this item provider's resources.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ResourceLocator getResourceLocator()
  {
    return ServiceCompositionEditPlugin.INSTANCE;
  }

}
