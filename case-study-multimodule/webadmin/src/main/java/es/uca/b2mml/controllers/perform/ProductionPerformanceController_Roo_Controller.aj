// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.controllers.perform;

import es.uca.b2mml.controllers.perform.ProductionPerformanceController;
import es.uca.b2mml.domain.equip.Equipment;
import es.uca.b2mml.domain.perform.ProductionPerformance;
import es.uca.b2mml.domain.perform.ProductionResponse;
import es.uca.b2mml.domain.schedule.ProductionSchedule;
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

privileged aspect ProductionPerformanceController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ProductionPerformanceController.create(@Valid ProductionPerformance productionPerformance, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, productionPerformance);
            return "productionperformances/create";
        }
        uiModel.asMap().clear();
        productionPerformance.persist();
        return "redirect:/productionperformances/" + encodeUrlPathSegment(productionPerformance.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ProductionPerformanceController.createForm(Model uiModel) {
        populateEditForm(uiModel, new ProductionPerformance());
        List<String[]> dependencies = new ArrayList<String[]>();
        if (Equipment.countEquipments() == 0) {
            dependencies.add(new String[] { "equipment", "equipments" });
        }
        uiModel.addAttribute("dependencies", dependencies);
        return "productionperformances/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String ProductionPerformanceController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("productionperformance", ProductionPerformance.findProductionPerformance(id));
        uiModel.addAttribute("itemId", id);
        return "productionperformances/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ProductionPerformanceController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("productionperformances", ProductionPerformance.findProductionPerformanceEntries(firstResult, sizeNo));
            float nrOfPages = (float) ProductionPerformance.countProductionPerformances() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("productionperformances", ProductionPerformance.findAllProductionPerformances());
        }
        addDateTimeFormatPatterns(uiModel);
        return "productionperformances/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ProductionPerformanceController.update(@Valid ProductionPerformance productionPerformance, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, productionPerformance);
            return "productionperformances/update";
        }
        uiModel.asMap().clear();
        productionPerformance.merge();
        return "redirect:/productionperformances/" + encodeUrlPathSegment(productionPerformance.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String ProductionPerformanceController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, ProductionPerformance.findProductionPerformance(id));
        return "productionperformances/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String ProductionPerformanceController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ProductionPerformance productionPerformance = ProductionPerformance.findProductionPerformance(id);
        productionPerformance.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/productionperformances";
    }
    
    void ProductionPerformanceController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("productionPerformance_starttime_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("productionPerformance_endtime_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("productionPerformance_publisheddate_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void ProductionPerformanceController.populateEditForm(Model uiModel, ProductionPerformance productionPerformance) {
        uiModel.addAttribute("productionPerformance", productionPerformance);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("equipments", Equipment.findAllEquipments());
        uiModel.addAttribute("productionresponses", ProductionResponse.findAllProductionResponses());
        uiModel.addAttribute("productionschedules", ProductionSchedule.findAllProductionSchedules());
    }
    
    String ProductionPerformanceController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
