// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.schedule;

import es.uca.b2mml.domain.equip.Equipment;
import es.uca.b2mml.domain.equip.EquipmentClass;
import es.uca.b2mml.domain.schedule.EquipmentRequirement;
import es.uca.b2mml.domain.schedule.EquipmentRequirementProperty;
import es.uca.b2mml.domain.schedule.SegmentRequirement;
import java.util.Set;

privileged aspect EquipmentRequirement_Roo_JavaBean {
    
    public SegmentRequirement EquipmentRequirement.getSegmentRequirement() {
        return this.segmentRequirement;
    }
    
    public void EquipmentRequirement.setSegmentRequirement(SegmentRequirement segmentRequirement) {
        this.segmentRequirement = segmentRequirement;
    }
    
    public Set<EquipmentClass> EquipmentRequirement.getEquipmentClasses() {
        return this.equipmentClasses;
    }
    
    public void EquipmentRequirement.setEquipmentClasses(Set<EquipmentClass> equipmentClasses) {
        this.equipmentClasses = equipmentClasses;
    }
    
    public Set<Equipment> EquipmentRequirement.getEquipment() {
        return this.equipment;
    }
    
    public void EquipmentRequirement.setEquipment(Set<Equipment> equipment) {
        this.equipment = equipment;
    }
    
    public String EquipmentRequirement.getDescription() {
        return this.description;
    }
    
    public void EquipmentRequirement.setDescription(String description) {
        this.description = description;
    }
    
    public Set<EquipmentRequirementProperty> EquipmentRequirement.getProperties() {
        return this.properties;
    }
    
    public void EquipmentRequirement.setProperties(Set<EquipmentRequirementProperty> properties) {
        this.properties = properties;
    }
    
}
