/**
 */
package es.uca.webservices.wsdl.analyzer.emf.catalog.provider;

import es.uca.webservices.wsdl.analyzer.emf.catalog.util.MessageCatalogAdapterFactory;

import java.util.ArrayList;
import java.util.Collection;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;

import org.eclipse.emf.edit.provider.ChangeNotifier;
import org.eclipse.emf.edit.provider.ComposeableAdapterFactory;
import org.eclipse.emf.edit.provider.ComposedAdapterFactory;
import org.eclipse.emf.edit.provider.IChangeNotifier;
import org.eclipse.emf.edit.provider.IDisposable;
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.IItemPropertySource;
import org.eclipse.emf.edit.provider.INotifyChangedListener;
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;

/**
 * This is the factory that is used to provide the interfaces needed to support Viewers.
 * The adapters generated by this factory convert EMF adapter notifications into calls to {@link #fireNotifyChanged fireNotifyChanged}.
 * The adapters also support Eclipse property sheets.
 * Note that most of the adapters are shared among multiple instances.
 * <!-- begin-user-doc -->
 * <!-- end-user-doc -->
 * @generated
 */
public class MessageCatalogItemProviderAdapterFactory extends MessageCatalogAdapterFactory implements ComposeableAdapterFactory, IChangeNotifier, IDisposable
{
  /**
   * This keeps track of the root adapter factory that delegates to this adapter factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ComposedAdapterFactory parentAdapterFactory;

  /**
   * This is used to implement {@link org.eclipse.emf.edit.provider.IChangeNotifier}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected IChangeNotifier changeNotifier = new ChangeNotifier();

  /**
   * This keeps track of all the supported types checked by {@link #isFactoryForType isFactoryForType}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected Collection<Object> supportedTypes = new ArrayList<Object>();

  /**
   * This constructs an instance.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public MessageCatalogItemProviderAdapterFactory()
  {
    supportedTypes.add(IEditingDomainItemProvider.class);
    supportedTypes.add(IStructuredItemContentProvider.class);
    supportedTypes.add(ITreeItemContentProvider.class);
    supportedTypes.add(IItemLabelProvider.class);
    supportedTypes.add(IItemPropertySource.class);
  }

  /**
   * This keeps track of the one adapter used for all {@link es.uca.webservices.wsdl.analyzer.emf.catalog.DocumentRoot} instances.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected DocumentRootItemProvider documentRootItemProvider;

  /**
   * This creates an adapter for a {@link es.uca.webservices.wsdl.analyzer.emf.catalog.DocumentRoot}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Adapter createDocumentRootAdapter()
  {
    if (documentRootItemProvider == null)
    {
      documentRootItemProvider = new DocumentRootItemProvider(this);
    }

    return documentRootItemProvider;
  }

  /**
   * This keeps track of the one adapter used for all {@link es.uca.webservices.wsdl.analyzer.emf.catalog.ServicesType} instances.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ServicesTypeItemProvider servicesTypeItemProvider;

  /**
   * This creates an adapter for a {@link es.uca.webservices.wsdl.analyzer.emf.catalog.ServicesType}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Adapter createServicesTypeAdapter()
  {
    if (servicesTypeItemProvider == null)
    {
      servicesTypeItemProvider = new ServicesTypeItemProvider(this);
    }

    return servicesTypeItemProvider;
  }

  /**
   * This keeps track of the one adapter used for all {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeDecls} instances.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected TypeDeclsItemProvider typeDeclsItemProvider;

  /**
   * This creates an adapter for a {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeDecls}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Adapter createTypeDeclsAdapter()
  {
    if (typeDeclsItemProvider == null)
    {
      typeDeclsItemProvider = new TypeDeclsItemProvider(this);
    }

    return typeDeclsItemProvider;
  }

  /**
   * This keeps track of the one adapter used for all {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeFault} instances.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected TypeFaultItemProvider typeFaultItemProvider;

  /**
   * This creates an adapter for a {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeFault}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Adapter createTypeFaultAdapter()
  {
    if (typeFaultItemProvider == null)
    {
      typeFaultItemProvider = new TypeFaultItemProvider(this);
    }

    return typeFaultItemProvider;
  }

  /**
   * This keeps track of the one adapter used for all {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeInput} instances.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected TypeInputItemProvider typeInputItemProvider;

  /**
   * This creates an adapter for a {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeInput}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Adapter createTypeInputAdapter()
  {
    if (typeInputItemProvider == null)
    {
      typeInputItemProvider = new TypeInputItemProvider(this);
    }

    return typeInputItemProvider;
  }

  /**
   * This keeps track of the one adapter used for all {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeOperation} instances.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected TypeOperationItemProvider typeOperationItemProvider;

  /**
   * This creates an adapter for a {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeOperation}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Adapter createTypeOperationAdapter()
  {
    if (typeOperationItemProvider == null)
    {
      typeOperationItemProvider = new TypeOperationItemProvider(this);
    }

    return typeOperationItemProvider;
  }

  /**
   * This keeps track of the one adapter used for all {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeOutput} instances.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected TypeOutputItemProvider typeOutputItemProvider;

  /**
   * This creates an adapter for a {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeOutput}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Adapter createTypeOutputAdapter()
  {
    if (typeOutputItemProvider == null)
    {
      typeOutputItemProvider = new TypeOutputItemProvider(this);
    }

    return typeOutputItemProvider;
  }

  /**
   * This keeps track of the one adapter used for all {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypePort} instances.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected TypePortItemProvider typePortItemProvider;

  /**
   * This creates an adapter for a {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypePort}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Adapter createTypePortAdapter()
  {
    if (typePortItemProvider == null)
    {
      typePortItemProvider = new TypePortItemProvider(this);
    }

    return typePortItemProvider;
  }

  /**
   * This keeps track of the one adapter used for all {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeService} instances.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected TypeServiceItemProvider typeServiceItemProvider;

  /**
   * This creates an adapter for a {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeService}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Adapter createTypeServiceAdapter()
  {
    if (typeServiceItemProvider == null)
    {
      typeServiceItemProvider = new TypeServiceItemProvider(this);
    }

    return typeServiceItemProvider;
  }

  /**
   * This keeps track of the one adapter used for all {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeTemplate} instances.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected TypeTemplateItemProvider typeTemplateItemProvider;

  /**
   * This creates an adapter for a {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeTemplate}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Adapter createTypeTemplateAdapter()
  {
    if (typeTemplateItemProvider == null)
    {
      typeTemplateItemProvider = new TypeTemplateItemProvider(this);
    }

    return typeTemplateItemProvider;
  }

  /**
   * This keeps track of the one adapter used for all {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeTypedef} instances.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected TypeTypedefItemProvider typeTypedefItemProvider;

  /**
   * This creates an adapter for a {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeTypedef}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Adapter createTypeTypedefAdapter()
  {
    if (typeTypedefItemProvider == null)
    {
      typeTypedefItemProvider = new TypeTypedefItemProvider(this);
    }

    return typeTypedefItemProvider;
  }

  /**
   * This keeps track of the one adapter used for all {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeVariable} instances.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected TypeVariableItemProvider typeVariableItemProvider;

  /**
   * This creates an adapter for a {@link es.uca.webservices.wsdl.analyzer.emf.catalog.TypeVariable}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Adapter createTypeVariableAdapter()
  {
    if (typeVariableItemProvider == null)
    {
      typeVariableItemProvider = new TypeVariableItemProvider(this);
    }

    return typeVariableItemProvider;
  }

  /**
   * This returns the root adapter factory that contains this factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ComposeableAdapterFactory getRootAdapterFactory()
  {
    return parentAdapterFactory == null ? this : parentAdapterFactory.getRootAdapterFactory();
  }

  /**
   * This sets the composed adapter factory that contains this factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setParentAdapterFactory(ComposedAdapterFactory parentAdapterFactory)
  {
    this.parentAdapterFactory = parentAdapterFactory;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public boolean isFactoryForType(Object type)
  {
    return supportedTypes.contains(type) || super.isFactoryForType(type);
  }

  /**
   * This implementation substitutes the factory itself as the key for the adapter.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Adapter adapt(Notifier notifier, Object type)
  {
    return super.adapt(notifier, this);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object adapt(Object object, Object type)
  {
    if (isFactoryForType(type))
    {
      Object adapter = super.adapt(object, type);
      if (!(type instanceof Class<?>) || (((Class<?>)type).isInstance(adapter)))
      {
        return adapter;
      }
    }

    return null;
  }

  /**
   * This adds a listener.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void addListener(INotifyChangedListener notifyChangedListener)
  {
    changeNotifier.addListener(notifyChangedListener);
  }

  /**
   * This removes a listener.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void removeListener(INotifyChangedListener notifyChangedListener)
  {
    changeNotifier.removeListener(notifyChangedListener);
  }

  /**
   * This delegates to {@link #changeNotifier} and to {@link #parentAdapterFactory}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void fireNotifyChanged(Notification notification)
  {
    changeNotifier.fireNotifyChanged(notification);

    if (parentAdapterFactory != null)
    {
      parentAdapterFactory.fireNotifyChanged(notification);
    }
  }

  /**
   * This disposes all of the item providers created by this factory. 
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void dispose()
  {
    if (documentRootItemProvider != null) documentRootItemProvider.dispose();
    if (servicesTypeItemProvider != null) servicesTypeItemProvider.dispose();
    if (typeDeclsItemProvider != null) typeDeclsItemProvider.dispose();
    if (typeFaultItemProvider != null) typeFaultItemProvider.dispose();
    if (typeInputItemProvider != null) typeInputItemProvider.dispose();
    if (typeOperationItemProvider != null) typeOperationItemProvider.dispose();
    if (typeOutputItemProvider != null) typeOutputItemProvider.dispose();
    if (typePortItemProvider != null) typePortItemProvider.dispose();
    if (typeServiceItemProvider != null) typeServiceItemProvider.dispose();
    if (typeTemplateItemProvider != null) typeTemplateItemProvider.dispose();
    if (typeTypedefItemProvider != null) typeTypedefItemProvider.dispose();
    if (typeVariableItemProvider != null) typeVariableItemProvider.dispose();
  }

}