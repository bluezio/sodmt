// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.controllers.perform;

import es.uca.b2mml.controllers.perform.PersonnelActualPropertyController;
import es.uca.b2mml.domain.Unit;
import es.uca.b2mml.domain.perform.PersonnelActual;
import es.uca.b2mml.domain.perform.PersonnelActualProperty;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
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

privileged aspect PersonnelActualPropertyController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PersonnelActualPropertyController.create(@Valid PersonnelActualProperty personnelActualProperty, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, personnelActualProperty);
            return "personnelactualproperties/create";
        }
        uiModel.asMap().clear();
        personnelActualProperty.persist();
        return "redirect:/personnelactualproperties/" + encodeUrlPathSegment(personnelActualProperty.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PersonnelActualPropertyController.createForm(Model uiModel) {
        populateEditForm(uiModel, new PersonnelActualProperty());
        List<String[]> dependencies = new ArrayList<String[]>();
        if (Unit.countUnits() == 0) {
            dependencies.add(new String[] { "unit", "units" });
        }
        if (PersonnelActual.countPersonnelActuals() == 0) {
            dependencies.add(new String[] { "personnelactual", "personnelactuals" });
        }
        uiModel.addAttribute("dependencies", dependencies);
        return "personnelactualproperties/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PersonnelActualPropertyController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("personnelactualproperty", PersonnelActualProperty.findPersonnelActualProperty(id));
        uiModel.addAttribute("itemId", id);
        return "personnelactualproperties/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PersonnelActualPropertyController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("personnelactualproperties", PersonnelActualProperty.findPersonnelActualPropertyEntries(firstResult, sizeNo));
            float nrOfPages = (float) PersonnelActualProperty.countPersonnelActualProperties() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("personnelactualproperties", PersonnelActualProperty.findAllPersonnelActualProperties());
        }
        return "personnelactualproperties/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PersonnelActualPropertyController.update(@Valid PersonnelActualProperty personnelActualProperty, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, personnelActualProperty);
            return "personnelactualproperties/update";
        }
        uiModel.asMap().clear();
        personnelActualProperty.merge();
        return "redirect:/personnelactualproperties/" + encodeUrlPathSegment(personnelActualProperty.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PersonnelActualPropertyController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, PersonnelActualProperty.findPersonnelActualProperty(id));
        return "personnelactualproperties/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PersonnelActualPropertyController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PersonnelActualProperty personnelActualProperty = PersonnelActualProperty.findPersonnelActualProperty(id);
        personnelActualProperty.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/personnelactualproperties";
    }
    
    void PersonnelActualPropertyController.populateEditForm(Model uiModel, PersonnelActualProperty personnelActualProperty) {
        uiModel.addAttribute("personnelActualProperty", personnelActualProperty);
        uiModel.addAttribute("units", Unit.findAllUnits());
        uiModel.addAttribute("personnelactuals", PersonnelActual.findAllPersonnelActuals());
    }
    
    String PersonnelActualPropertyController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
