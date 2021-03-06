// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.capability;

import es.uca.b2mml.domain.capability.EquipmentCapability;
import es.uca.b2mml.domain.capability.EquipmentCapabilityProperty;
import es.uca.b2mml.domain.equip.Equipment;
import es.uca.b2mml.domain.equip.EquipmentClass;
import java.util.Set;

privileged aspect EquipmentCapability_Roo_JavaBean {
    
    public Set<EquipmentCapabilityProperty> EquipmentCapability.getProperties() {
        return this.properties;
    }
    
    public void EquipmentCapability.setProperties(Set<EquipmentCapabilityProperty> properties) {
        this.properties = properties;
    }
    
    public EquipmentClass EquipmentCapability.getEquipmentClass() {
        return this.equipmentClass;
    }
    
    public void EquipmentCapability.setEquipmentClass(EquipmentClass equipmentClass) {
        this.equipmentClass = equipmentClass;
    }
    
    public Equipment EquipmentCapability.getEquipment() {
        return this.equipment;
    }
    
    public void EquipmentCapability.setEquipment(Equipment equipment) {
        this.equipment = equipment;
    }
    
}
