// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.equip;

import es.uca.b2mml.domain.equip.MaintenanceRequestStatus;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect MaintenanceRequestStatus_Roo_Jpa_Entity {
    
    declare @type: MaintenanceRequestStatus: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long MaintenanceRequestStatus.id;
    
    @Version
    @Column(name = "version")
    private Integer MaintenanceRequestStatus.version;
    
    public Long MaintenanceRequestStatus.getId() {
        return this.id;
    }
    
    public void MaintenanceRequestStatus.setId(Long id) {
        this.id = id;
    }
    
    public Integer MaintenanceRequestStatus.getVersion() {
        return this.version;
    }
    
    public void MaintenanceRequestStatus.setVersion(Integer version) {
        this.version = version;
    }
    
}