/*
 * 
 */
package serviceProcess.diagram.parsers;

import java.text.FieldPosition;
import java.text.MessageFormat;
import java.text.ParsePosition;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.gmf.runtime.common.core.command.ICommand;
import org.eclipse.gmf.runtime.common.ui.services.parser.IParserEditStatus;
import org.eclipse.gmf.runtime.common.ui.services.parser.ParserEditStatus;
import org.eclipse.osgi.util.NLS;

/**
 * @generated
 */
public class ControlFlowLabelParser extends
		serviceProcess.diagram.parsers.AbstractParser {

	/**
	 * @generated
	 */
	private String defaultPattern;

	/**
	 * @generated
	 */
	private String defaultEditablePattern;

	/**
	 * @generated
	 */
	private MessageFormat viewProcessor;

	/**
	 * @generated
	 */
	private MessageFormat editorProcessor;

	/**
	 * @generated
	 */
	private MessageFormat editProcessor;

	/**
	 * @generated
	 */
	public ControlFlowLabelParser(EAttribute[] features) {
		super(features);
	}

	/**
	 * @generated
	 */
	public ControlFlowLabelParser(EAttribute[] features,
			EAttribute[] editableFeatures) {
		super(features, editableFeatures);
	}

	/**
	 * @generated
	 */
	protected String getDefaultPattern() {
		if (defaultPattern == null) {
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < features.length; i++) {
				if (i > 0) {
					sb.append(' ');
				}
				sb.append('{');
				sb.append(i);
				sb.append('}');
			}
			defaultPattern = sb.toString();
		}
		return defaultPattern;
	}

	/**
	 * @generated
	 */
	public void setViewPattern(String viewPattern) {
		super.setViewPattern(viewPattern);
		viewProcessor = null;
	}

	/**
	 * @generated
	 */
	public void setEditorPattern(String editorPattern) {
		super.setEditorPattern(editorPattern);
		editorProcessor = null;
	}

	/**
	 * @generated
	 */
	protected MessageFormat getViewProcessor() {
		if (viewProcessor == null) {
			viewProcessor = new MessageFormat(
					getViewPattern() == null ? getDefaultPattern()
							: getViewPattern());
		}
		return viewProcessor;
	}

	/**
	 * @generated
	 */
	protected MessageFormat getEditorProcessor() {
		if (editorProcessor == null) {
			editorProcessor = new MessageFormat(
					getEditorPattern() == null ? getDefaultEditablePattern()
							: getEditorPattern());
		}
		return editorProcessor;
	}

	/**
	 * @generated
	 */
	protected String getDefaultEditablePattern() {
		if (defaultEditablePattern == null) {
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < editableFeatures.length; i++) {
				if (i > 0) {
					sb.append(' ');
				}
				sb.append('{');
				sb.append(i);
				sb.append('}');
			}
			defaultEditablePattern = sb.toString();
		}
		return defaultEditablePattern;
	}

	/**
	 * @generated
	 */
	public void setEditPattern(String editPattern) {
		super.setEditPattern(editPattern);
		editProcessor = null;
	}

	/**
	 * @generated
	 */
	protected MessageFormat getEditProcessor() {
		if (editProcessor == null) {
			editProcessor = new MessageFormat(
					getEditPattern() == null ? getDefaultEditablePattern()
							: getEditPattern());
		}
		return editProcessor;
	}

	/**
	 * @generated
	 */
	public String getEditString(IAdaptable adapter, int flags) {
		EObject element = (EObject) adapter.getAdapter(EObject.class);
		return getEditorProcessor().format(getEditableValues(element),
				new StringBuffer(), new FieldPosition(0)).toString();
	}

	/**
	 * @generated
	 */
	public IParserEditStatus isValidEditString(IAdaptable adapter,
			String editString) {
		ParsePosition pos = new ParsePosition(0);
		Object[] values = getEditProcessor().parse(editString, pos);
		if (values == null) {
			return new ParserEditStatus(
					serviceProcess.diagram.part.ServiceProcessDiagramEditorPlugin.ID,
					IParserEditStatus.UNEDITABLE,
					NLS.bind(
							serviceProcess.diagram.part.Messages.MessageFormatParser_InvalidInputError,
							new Integer(pos.getErrorIndex())));
		}
		return validateNewValues(values);
	}

	/**
	 * @generated NOT
	 */
	public ICommand getParseCommand(IAdaptable adapter, String newString,
			int flags) {
		Object[] values = getEditorProcessor().parse(newString,
				new java.text.ParsePosition(0));
		for (int i = 0; i < values.length; ++i) {
			if (values[i] instanceof Number) {
				values[i] = new Double(((Number) values[i]).doubleValue());
			}
		}
		return getParseCommand(adapter, values, flags);
	}

	/**
	 * @generated NOT
	 */
	public String getPrintString(IAdaptable adapter, int flags) {
		org.eclipse.emf.ecore.EObject element = (org.eclipse.emf.ecore.EObject) adapter
				.getAdapter(org.eclipse.emf.ecore.EObject.class);
		Object[] values = getValues(element);
		if (values.length > 0 && values[0] instanceof String
				&& ((String) values[0]).trim().length() > 0) {
			return getViewProcessor().format(getValues(element),
					new StringBuffer(), new java.text.FieldPosition(0))
					.toString();
		} else
			return "";
	}

}
