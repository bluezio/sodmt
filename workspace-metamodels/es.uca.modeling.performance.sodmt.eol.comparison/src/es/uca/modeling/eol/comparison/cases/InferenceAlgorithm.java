package es.uca.modeling.eol.comparison.cases;

import java.net.URI;
import java.util.Arrays;

import org.eclipse.core.runtime.Platform;
import org.eclipse.epsilon.emc.emf.EmfModel;
import org.eclipse.epsilon.eol.EolModule;
import org.eclipse.epsilon.eol.dom.Operation;
import org.eclipse.epsilon.eol.dt.launching.EclipseContextManager;
import org.eclipse.epsilon.eol.execute.context.IEolContext;

public class InferenceAlgorithm {

	public static final String OPERATION_NEW = "distributeTime";
	public static final String OPERATION_OLD = "annotateTimeLimits";
	public static final String OPERATION_GLPK = "distributeTimeGlpsol";
	public static final String OPERATION_THROUGHPUT = "annotateConcurrentUsers";

	private static final String MAIN_EOL_BUNDLE = "es.uca.modeling.performance.sodmt.eol";
	private static final String MAIN_EOL_PATH = "/eol/algorithms.eol";

	private static EolModule _module;

	private static EolModule getModule() throws Exception {
		if (_module == null) {
			URI uri = Platform.getBundle(MAIN_EOL_BUNDLE).getEntry(MAIN_EOL_PATH).toURI();
			_module = new EolModule();
			_module.parse(uri);
			_module.execute();

			// We need this in order to use Java-based tools
			EclipseContextManager.setup(_module.getContext());
		}
		return _module;
	}

	private String fOperation;

	public InferenceAlgorithm(String operationName) {
		fOperation = operationName;
	}

	public void run(EmfModel model, Object... args) throws Exception {
		final EolModule module = getModule();
		final IEolContext context = module.getContext();

		context.getModelRepository().addModel(model);
		final Operation operation = module.getOperations().getOperation(fOperation);
		operation.execute(null, Arrays.asList(args), context);
		context.getModelRepository().removeModel(model);
		module.clearCache();
	}

	public long runAndTimeNanos(EmfModel model, Object... args)
		throws Exception
	{
		final long startNanos = System.nanoTime();
		run(model, args);
		return (System.nanoTime() - startNanos);
	}
}
