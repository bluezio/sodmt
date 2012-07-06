/**
 */
package es.uca.webservices.wsdl.analyzer.emf.catalog.tests;

import junit.framework.Test;
import junit.framework.TestSuite;

import junit.textui.TestRunner;

/**
 * <!-- begin-user-doc -->
 * A test suite for the '<em><b>Catalog</b></em>' model.
 * <!-- end-user-doc -->
 * @generated
 */
public class CatalogAllTests extends TestSuite
{

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static void main(String[] args)
  {
    TestRunner.run(suite());
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static Test suite()
  {
    TestSuite suite = new CatalogAllTests("Catalog Tests");
    suite.addTest(MessageCatalogTests.suite());
    return suite;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public CatalogAllTests(String name)
  {
    super(name);
  }

} //CatalogAllTests
