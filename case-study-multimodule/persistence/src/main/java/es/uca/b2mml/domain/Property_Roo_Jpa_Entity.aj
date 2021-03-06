// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain;

import es.uca.b2mml.domain.Property;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.MappedSuperclass;
import javax.persistence.Version;

privileged aspect Property_Roo_Jpa_Entity {
    
    declare @type: Property: @MappedSuperclass;
    
    declare @type: Property: @Inheritance(strategy = InheritanceType.TABLE_PER_CLASS);
    
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    @Column(name = "id")
    private Long Property.id;
    
    @Version
    @Column(name = "version")
    private Integer Property.version;
    
    public Long Property.getId() {
        return this.id;
    }
    
    public void Property.setId(Long id) {
        this.id = id;
    }
    
    public Integer Property.getVersion() {
        return this.version;
    }
    
    public void Property.setVersion(Integer version) {
        this.version = version;
    }
    
}
