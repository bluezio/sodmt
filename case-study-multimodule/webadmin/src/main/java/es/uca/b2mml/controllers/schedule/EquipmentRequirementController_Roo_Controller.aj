// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.controllers.schedule;

import es.uca.b2mml.controllers.schedule.EquipmentRequirementController;
import es.uca.b2mml.domain.schedule.EquipmentRequirement;
import es.uca.b2mml.domain.schedule.SegmentRequirement;
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

privileged aspect EquipmentRequirementController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String EquipmentRequirementController.create(@Valid EquipmentRequirement equipmentRequirement, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, equipmentRequirement);
            return "equipmentrequirements/create";
        }
        uiModel.asMap().clear();
        equipmentRequirement.persist();
        return "redirect:/equipmentrequirements/" + encodeUrlPathSegment(equipmentRequirement.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String EquipmentRequirementController.createForm(Model uiModel) {
        populateEditForm(uiModel, new EquipmentRequirement());
        List<String[]> dependencies = new ArrayList<String[]>();
        if (SegmentRequirement.countSegmentRequirements() == 0) {
            dependencies.add(new String[] { "segmentrequirement", "segmentrequirements" });
        }
        uiModel.addAttribute("dependencies", dependencies);
        return "equipmentrequirements/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String EquipmentRequirementController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("equipmentrequirement", EquipmentRequirement.findEquipmentRequirement(id));
        uiModel.addAttribute("itemId", id);
        return "equipmentrequirements/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String EquipmentRequirementController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("equipmentrequirements", EquipmentRequirement.findEquipmentRequirementEntries(firstResult, sizeNo));
            float nrOfPages = (float) EquipmentRequirement.countEquipmentRequirements() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("equipmentrequirements", EquipmentRequirement.findAllEquipmentRequirements());
        }
        return "equipmentrequirements/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String EquipmentRequirementController.update(@Valid EquipmentRequirement equipmentRequirement, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, equipmentRequirement);
            return "equipmentrequirements/update";
        }
        uiModel.asMap().clear();
        equipmentRequirement.merge();
        return "redirect:/equipmentrequirements/" + encodeUrlPathSegment(equipmentRequirement.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String EquipmentRequirementController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, EquipmentRequirement.findEquipmentRequirement(id));
        return "equipmentrequirements/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String EquipmentRequirementController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        EquipmentRequirement equipmentRequirement = EquipmentRequirement.findEquipmentRequirement(id);
        equipmentRequirement.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/equipmentrequirements";
    }
    
    String EquipmentRequirementController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
