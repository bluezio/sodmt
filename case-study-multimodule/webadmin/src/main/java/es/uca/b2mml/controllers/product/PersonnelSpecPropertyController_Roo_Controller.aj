// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.controllers.product;

import es.uca.b2mml.controllers.product.PersonnelSpecPropertyController;
import es.uca.b2mml.domain.Unit;
import es.uca.b2mml.domain.product.PersonnelSpec;
import es.uca.b2mml.domain.product.PersonnelSpecProperty;
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

privileged aspect PersonnelSpecPropertyController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PersonnelSpecPropertyController.create(@Valid PersonnelSpecProperty personnelSpecProperty, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, personnelSpecProperty);
            return "personnelspecproperties/create";
        }
        uiModel.asMap().clear();
        personnelSpecProperty.persist();
        return "redirect:/personnelspecproperties/" + encodeUrlPathSegment(personnelSpecProperty.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PersonnelSpecPropertyController.createForm(Model uiModel) {
        populateEditForm(uiModel, new PersonnelSpecProperty());
        List<String[]> dependencies = new ArrayList<String[]>();
        if (Unit.countUnits() == 0) {
            dependencies.add(new String[] { "unit", "units" });
        }
        if (PersonnelSpec.countPersonnelSpecs() == 0) {
            dependencies.add(new String[] { "personnelspec", "personnelspecs" });
        }
        uiModel.addAttribute("dependencies", dependencies);
        return "personnelspecproperties/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PersonnelSpecPropertyController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("personnelspecproperty", PersonnelSpecProperty.findPersonnelSpecProperty(id));
        uiModel.addAttribute("itemId", id);
        return "personnelspecproperties/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PersonnelSpecPropertyController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("personnelspecproperties", PersonnelSpecProperty.findPersonnelSpecPropertyEntries(firstResult, sizeNo));
            float nrOfPages = (float) PersonnelSpecProperty.countPersonnelSpecProperties() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("personnelspecproperties", PersonnelSpecProperty.findAllPersonnelSpecProperties());
        }
        return "personnelspecproperties/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PersonnelSpecPropertyController.update(@Valid PersonnelSpecProperty personnelSpecProperty, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, personnelSpecProperty);
            return "personnelspecproperties/update";
        }
        uiModel.asMap().clear();
        personnelSpecProperty.merge();
        return "redirect:/personnelspecproperties/" + encodeUrlPathSegment(personnelSpecProperty.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PersonnelSpecPropertyController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, PersonnelSpecProperty.findPersonnelSpecProperty(id));
        return "personnelspecproperties/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PersonnelSpecPropertyController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PersonnelSpecProperty personnelSpecProperty = PersonnelSpecProperty.findPersonnelSpecProperty(id);
        personnelSpecProperty.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/personnelspecproperties";
    }
    
    void PersonnelSpecPropertyController.populateEditForm(Model uiModel, PersonnelSpecProperty personnelSpecProperty) {
        uiModel.addAttribute("personnelSpecProperty", personnelSpecProperty);
        uiModel.addAttribute("units", Unit.findAllUnits());
        uiModel.addAttribute("personnelspecs", PersonnelSpec.findAllPersonnelSpecs());
    }
    
    String PersonnelSpecPropertyController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
