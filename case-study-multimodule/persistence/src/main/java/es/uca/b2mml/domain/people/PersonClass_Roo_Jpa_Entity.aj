// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.people;

import es.uca.b2mml.domain.people.PersonClass;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect PersonClass_Roo_Jpa_Entity {
    
    declare @type: PersonClass: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long PersonClass.id;
    
    @Version
    @Column(name = "version")
    private Integer PersonClass.version;
    
    public Long PersonClass.getId() {
        return this.id;
    }
    
    public void PersonClass.setId(Long id) {
        this.id = id;
    }
    
    public Integer PersonClass.getVersion() {
        return this.version;
    }
    
    public void PersonClass.setVersion(Integer version) {
        this.version = version;
    }
    
}