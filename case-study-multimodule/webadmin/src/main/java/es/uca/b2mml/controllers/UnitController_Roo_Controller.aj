// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.controllers;

import es.uca.b2mml.controllers.UnitController;
import es.uca.b2mml.domain.SystemUnitType;
import es.uca.b2mml.domain.Unit;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect UnitController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String UnitController.create(@Valid Unit unit, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, unit);
            return "units/create";
        }
        uiModel.asMap().clear();
        unit.persist();
        return "redirect:/units/" + encodeUrlPathSegment(unit.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String UnitController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Unit());
        return "units/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String UnitController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("unit", Unit.findUnit(id));
        uiModel.addAttribute("itemId", id);
        return "units/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String UnitController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("units", Unit.findUnitEntries(firstResult, sizeNo));
            float nrOfPages = (float) Unit.countUnits() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("units", Unit.findAllUnits());
        }
        return "units/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String UnitController.update(@Valid Unit unit, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, unit);
            return "units/update";
        }
        uiModel.asMap().clear();
        unit.merge();
        return "redirect:/units/" + encodeUrlPathSegment(unit.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String UnitController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Unit.findUnit(id));
        return "units/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String UnitController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Unit unit = Unit.findUnit(id);
        unit.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/units";
    }
    
    void UnitController.populateEditForm(Model uiModel, Unit unit) {
        uiModel.addAttribute("unit", unit);
        uiModel.addAttribute("systemunittypes", Arrays.asList(SystemUnitType.values()));
        uiModel.addAttribute("units", Unit.findAllUnits());
    }
    
    String UnitController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
