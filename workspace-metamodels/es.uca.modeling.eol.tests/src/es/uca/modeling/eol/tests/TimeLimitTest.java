package es.uca.modeling.eol.tests;

import java.io.File;
import java.net.URI;

import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(EUnitTestRunner.class)
public class TimeLimitTest extends AbstractModelTest {
	@Override
	public URI getModuleURI() throws Exception {
		return new File("caggregation.eunit").toURI();
	}
	
	@Test
	public void foo() {
		
	}
}
