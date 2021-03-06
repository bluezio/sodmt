package es.uca.b2mml.controllers.equip;
import es.uca.b2mml.domain.equip.EquipmentClass;

import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/equipmentclasses")
@Controller
@RooWebScaffold(path = "equipmentclasses", formBackingObject = EquipmentClass.class)
public class EquipmentClassController {
}
