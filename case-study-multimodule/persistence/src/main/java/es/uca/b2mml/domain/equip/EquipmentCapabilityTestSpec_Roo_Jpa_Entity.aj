// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.equip;

import es.uca.b2mml.domain.equip.EquipmentCapabilityTestSpec;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect EquipmentCapabilityTestSpec_Roo_Jpa_Entity {
    
    declare @type: EquipmentCapabilityTestSpec: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long EquipmentCapabilityTestSpec.id;
    
    @Version
    @Column(name = "version")
    private Integer EquipmentCapabilityTestSpec.version;
    
    public Long EquipmentCapabilityTestSpec.getId() {
        return this.id;
    }
    
    public void EquipmentCapabilityTestSpec.setId(Long id) {
        this.id = id;
    }
    
    public Integer EquipmentCapabilityTestSpec.getVersion() {
        return this.version;
    }
    
    public void EquipmentCapabilityTestSpec.setVersion(Integer version) {
        this.version = version;
    }
    
}
