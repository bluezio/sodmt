// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.controllers.capability;

import es.uca.b2mml.controllers.capability.EquipmentCapabilityPropertyController;
import es.uca.b2mml.domain.Unit;
import es.uca.b2mml.domain.capability.EquipmentCapability;
import es.uca.b2mml.domain.capability.EquipmentCapabilityProperty;
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

privileged aspect EquipmentCapabilityPropertyController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String EquipmentCapabilityPropertyController.create(@Valid EquipmentCapabilityProperty equipmentCapabilityProperty, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, equipmentCapabilityProperty);
            return "equipmentcapabilityproperties/create";
        }
        uiModel.asMap().clear();
        equipmentCapabilityProperty.persist();
        return "redirect:/equipmentcapabilityproperties/" + encodeUrlPathSegment(equipmentCapabilityProperty.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String EquipmentCapabilityPropertyController.createForm(Model uiModel) {
        populateEditForm(uiModel, new EquipmentCapabilityProperty());
        List<String[]> dependencies = new ArrayList<String[]>();
        if (Unit.countUnits() == 0) {
            dependencies.add(new String[] { "unit", "units" });
        }
        if (EquipmentCapability.countEquipmentCapabilities() == 0) {
            dependencies.add(new String[] { "equipmentcapability", "equipmentcapabilities" });
        }
        uiModel.addAttribute("dependencies", dependencies);
        return "equipmentcapabilityproperties/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String EquipmentCapabilityPropertyController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("equipmentcapabilityproperty", EquipmentCapabilityProperty.findEquipmentCapabilityProperty(id));
        uiModel.addAttribute("itemId", id);
        return "equipmentcapabilityproperties/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String EquipmentCapabilityPropertyController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("equipmentcapabilityproperties", EquipmentCapabilityProperty.findEquipmentCapabilityPropertyEntries(firstResult, sizeNo));
            float nrOfPages = (float) EquipmentCapabilityProperty.countEquipmentCapabilityProperties() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("equipmentcapabilityproperties", EquipmentCapabilityProperty.findAllEquipmentCapabilityProperties());
        }
        return "equipmentcapabilityproperties/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String EquipmentCapabilityPropertyController.update(@Valid EquipmentCapabilityProperty equipmentCapabilityProperty, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, equipmentCapabilityProperty);
            return "equipmentcapabilityproperties/update";
        }
        uiModel.asMap().clear();
        equipmentCapabilityProperty.merge();
        return "redirect:/equipmentcapabilityproperties/" + encodeUrlPathSegment(equipmentCapabilityProperty.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String EquipmentCapabilityPropertyController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, EquipmentCapabilityProperty.findEquipmentCapabilityProperty(id));
        return "equipmentcapabilityproperties/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String EquipmentCapabilityPropertyController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        EquipmentCapabilityProperty equipmentCapabilityProperty = EquipmentCapabilityProperty.findEquipmentCapabilityProperty(id);
        equipmentCapabilityProperty.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/equipmentcapabilityproperties";
    }
    
    void EquipmentCapabilityPropertyController.populateEditForm(Model uiModel, EquipmentCapabilityProperty equipmentCapabilityProperty) {
        uiModel.addAttribute("equipmentCapabilityProperty", equipmentCapabilityProperty);
        uiModel.addAttribute("units", Unit.findAllUnits());
        uiModel.addAttribute("equipmentcapabilities", EquipmentCapability.findAllEquipmentCapabilities());
    }
    
    String EquipmentCapabilityPropertyController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
