package es.uca.modeling.eol.tests;

import java.io.File;
import java.net.URI;

import org.eclipse.epsilon.eol.execute.operations.contributors.OperationContributor;
import org.eclipse.epsilon.eunit.junit.EUnitTestRunner;
import org.junit.runner.RunWith;

@RunWith(EUnitTestRunner.class)
public class TimeLimitTest extends AbstractModelTest {
	@Override
	public OperationContributor getOperationContributor() {
		return null;
	}

	@Override
	public URI getModuleURI() throws Exception {
		return new File("tlimits.eunit").toURI();
	}
}
