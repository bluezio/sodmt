// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain;

import es.uca.b2mml.domain.Priority;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Priority_Roo_Jpa_Entity {
    
    declare @type: Priority: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Priority.id;
    
    @Version
    @Column(name = "version")
    private Integer Priority.version;
    
    public Long Priority.getId() {
        return this.id;
    }
    
    public void Priority.setId(Long id) {
        this.id = id;
    }
    
    public Integer Priority.getVersion() {
        return this.version;
    }
    
    public void Priority.setVersion(Integer version) {
        this.version = version;
    }
    
}
