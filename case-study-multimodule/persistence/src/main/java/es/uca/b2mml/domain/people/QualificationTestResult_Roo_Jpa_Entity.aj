// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.people;

import es.uca.b2mml.domain.people.QualificationTestResult;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect QualificationTestResult_Roo_Jpa_Entity {
    
    declare @type: QualificationTestResult: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long QualificationTestResult.id;
    
    @Version
    @Column(name = "version")
    private Integer QualificationTestResult.version;
    
    public Long QualificationTestResult.getId() {
        return this.id;
    }
    
    public void QualificationTestResult.setId(Long id) {
        this.id = id;
    }
    
    public Integer QualificationTestResult.getVersion() {
        return this.version;
    }
    
    public void QualificationTestResult.setVersion(Integer version) {
        this.version = version;
    }
    
}
