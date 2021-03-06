/**
 */
package es.uca.modeling.eol.marte.weaving.wsdl.links.impl;

import es.uca.modeling.eol.marte.weaving.wsdl.links.*;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class LinksFactoryImpl extends EFactoryImpl implements LinksFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static LinksFactory init()
  {
    try
    {
      LinksFactory theLinksFactory = (LinksFactory)EPackage.Registry.INSTANCE.getEFactory("www.uca.es/modeling/weaving/wsdl"); 
      if (theLinksFactory != null)
      {
        return theLinksFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new LinksFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public LinksFactoryImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EObject create(EClass eClass)
  {
    switch (eClass.getClassifierID())
    {
      case LinksPackage.PERFORMANCE_REQUIREMENT_LINKS: return createPerformanceRequirementLinks();
      case LinksPackage.PERFORMANCE_REQUIREMENT_LINK: return createPerformanceRequirementLink();
      default:
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public PerformanceRequirementLinks createPerformanceRequirementLinks()
  {
    PerformanceRequirementLinksImpl performanceRequirementLinks = new PerformanceRequirementLinksImpl();
    return performanceRequirementLinks;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public PerformanceRequirementLink createPerformanceRequirementLink()
  {
    PerformanceRequirementLinkImpl performanceRequirementLink = new PerformanceRequirementLinkImpl();
    return performanceRequirementLink;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public LinksPackage getLinksPackage()
  {
    return (LinksPackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static LinksPackage getPackage()
  {
    return LinksPackage.eINSTANCE;
  }

} //LinksFactoryImpl
