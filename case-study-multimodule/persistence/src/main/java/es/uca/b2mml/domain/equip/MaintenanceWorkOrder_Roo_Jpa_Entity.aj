// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.equip;

import es.uca.b2mml.domain.equip.MaintenanceWorkOrder;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect MaintenanceWorkOrder_Roo_Jpa_Entity {
    
    declare @type: MaintenanceWorkOrder: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long MaintenanceWorkOrder.id;
    
    @Version
    @Column(name = "version")
    private Integer MaintenanceWorkOrder.version;
    
    public Long MaintenanceWorkOrder.getId() {
        return this.id;
    }
    
    public void MaintenanceWorkOrder.setId(Long id) {
        this.id = id;
    }
    
    public Integer MaintenanceWorkOrder.getVersion() {
        return this.version;
    }
    
    public void MaintenanceWorkOrder.setVersion(Integer version) {
        this.version = version;
    }
    
}
