// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.controllers.equip;

import es.uca.b2mml.controllers.equip.EquipmentCapabilityTestResultController;
import es.uca.b2mml.domain.Unit;
import es.uca.b2mml.domain.equip.EquipmentCapabilityTestResult;
import es.uca.b2mml.domain.equip.EquipmentCapabilityTestSpec;
import es.uca.b2mml.domain.equip.EquipmentProperty;
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

privileged aspect EquipmentCapabilityTestResultController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String EquipmentCapabilityTestResultController.create(@Valid EquipmentCapabilityTestResult equipmentCapabilityTestResult, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, equipmentCapabilityTestResult);
            return "equipmentcapabilitytestresults/create";
        }
        uiModel.asMap().clear();
        equipmentCapabilityTestResult.persist();
        return "redirect:/equipmentcapabilitytestresults/" + encodeUrlPathSegment(equipmentCapabilityTestResult.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String EquipmentCapabilityTestResultController.createForm(Model uiModel) {
        populateEditForm(uiModel, new EquipmentCapabilityTestResult());
        List<String[]> dependencies = new ArrayList<String[]>();
        if (EquipmentCapabilityTestSpec.countEquipmentCapabilityTestSpecs() == 0) {
            dependencies.add(new String[] { "equipmentcapabilitytestspec", "equipmentcapabilitytestspecs" });
        }
        if (EquipmentProperty.countEquipmentProperties() == 0) {
            dependencies.add(new String[] { "equipmentproperty", "equipmentproperties" });
        }
        if (Unit.countUnits() == 0) {
            dependencies.add(new String[] { "unit", "units" });
        }
        uiModel.addAttribute("dependencies", dependencies);
        return "equipmentcapabilitytestresults/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String EquipmentCapabilityTestResultController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("equipmentcapabilitytestresult", EquipmentCapabilityTestResult.findEquipmentCapabilityTestResult(id));
        uiModel.addAttribute("itemId", id);
        return "equipmentcapabilitytestresults/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String EquipmentCapabilityTestResultController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("equipmentcapabilitytestresults", EquipmentCapabilityTestResult.findEquipmentCapabilityTestResultEntries(firstResult, sizeNo));
            float nrOfPages = (float) EquipmentCapabilityTestResult.countEquipmentCapabilityTestResults() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("equipmentcapabilitytestresults", EquipmentCapabilityTestResult.findAllEquipmentCapabilityTestResults());
        }
        addDateTimeFormatPatterns(uiModel);
        return "equipmentcapabilitytestresults/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String EquipmentCapabilityTestResultController.update(@Valid EquipmentCapabilityTestResult equipmentCapabilityTestResult, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, equipmentCapabilityTestResult);
            return "equipmentcapabilitytestresults/update";
        }
        uiModel.asMap().clear();
        equipmentCapabilityTestResult.merge();
        return "redirect:/equipmentcapabilitytestresults/" + encodeUrlPathSegment(equipmentCapabilityTestResult.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String EquipmentCapabilityTestResultController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, EquipmentCapabilityTestResult.findEquipmentCapabilityTestResult(id));
        return "equipmentcapabilitytestresults/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String EquipmentCapabilityTestResultController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        EquipmentCapabilityTestResult equipmentCapabilityTestResult = EquipmentCapabilityTestResult.findEquipmentCapabilityTestResult(id);
        equipmentCapabilityTestResult.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/equipmentcapabilitytestresults";
    }
    
    void EquipmentCapabilityTestResultController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("equipmentCapabilityTestResult_testdate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("equipmentCapabilityTestResult_expiration_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void EquipmentCapabilityTestResultController.populateEditForm(Model uiModel, EquipmentCapabilityTestResult equipmentCapabilityTestResult) {
        uiModel.addAttribute("equipmentCapabilityTestResult", equipmentCapabilityTestResult);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("units", Unit.findAllUnits());
        uiModel.addAttribute("equipmentcapabilitytestspecs", EquipmentCapabilityTestSpec.findAllEquipmentCapabilityTestSpecs());
        uiModel.addAttribute("equipmentproperties", EquipmentProperty.findAllEquipmentProperties());
    }
    
    String EquipmentCapabilityTestResultController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
