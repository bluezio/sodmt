// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.controllers.material;

import es.uca.b2mml.controllers.material.QATestResultController;
import es.uca.b2mml.domain.Unit;
import es.uca.b2mml.domain.material.MaterialLotProperty;
import es.uca.b2mml.domain.material.QATestResult;
import es.uca.b2mml.domain.material.QATestSpec;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect QATestResultController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String QATestResultController.create(@Valid QATestResult QATestResult_, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, QATestResult_);
            return "qatestresults/create";
        }
        uiModel.asMap().clear();
        QATestResult_.persist();
        return "redirect:/qatestresults/" + encodeUrlPathSegment(QATestResult_.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String QATestResultController.createForm(Model uiModel) {
        populateEditForm(uiModel, new QATestResult());
        List<String[]> dependencies = new ArrayList<String[]>();
        if (QATestSpec.countQATestSpecs() == 0) {
            dependencies.add(new String[] { "qatestspec", "qatestspecs" });
        }
        if (MaterialLotProperty.countMaterialLotProperties() == 0) {
            dependencies.add(new String[] { "materiallotproperty", "materiallotproperties" });
        }
        uiModel.addAttribute("dependencies", dependencies);
        return "qatestresults/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String QATestResultController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("qatestresult_", QATestResult.findQATestResult(id));
        uiModel.addAttribute("itemId", id);
        return "qatestresults/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String QATestResultController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("qatestresults", QATestResult.findQATestResultEntries(firstResult, sizeNo));
            float nrOfPages = (float) QATestResult.countQATestResults() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("qatestresults", QATestResult.findAllQATestResults());
        }
        addDateTimeFormatPatterns(uiModel);
        return "qatestresults/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String QATestResultController.update(@Valid QATestResult QATestResult_, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, QATestResult_);
            return "qatestresults/update";
        }
        uiModel.asMap().clear();
        QATestResult_.merge();
        return "redirect:/qatestresults/" + encodeUrlPathSegment(QATestResult_.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String QATestResultController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, QATestResult.findQATestResult(id));
        return "qatestresults/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String QATestResultController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        QATestResult QATestResult_ = QATestResult.findQATestResult(id);
        QATestResult_.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/qatestresults";
    }
    
    void QATestResultController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("QATestResult__resultdate_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("QATestResult__expirationdate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void QATestResultController.populateEditForm(Model uiModel, QATestResult QATestResult_) {
        uiModel.addAttribute("QATestResult_", QATestResult_);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("units", Unit.findAllUnits());
        uiModel.addAttribute("materiallotproperties", MaterialLotProperty.findAllMaterialLotProperties());
        uiModel.addAttribute("qatestspecs", QATestSpec.findAllQATestSpecs());
    }
    
    String QATestResultController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
