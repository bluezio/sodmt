// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.material;

import es.uca.b2mml.domain.material.QATestResult;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect QATestResult_Roo_Jpa_Entity {
    
    declare @type: QATestResult: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long QATestResult.id;
    
    @Version
    @Column(name = "version")
    private Integer QATestResult.version;
    
    public Long QATestResult.getId() {
        return this.id;
    }
    
    public void QATestResult.setId(Long id) {
        this.id = id;
    }
    
    public Integer QATestResult.getVersion() {
        return this.version;
    }
    
    public void QATestResult.setVersion(Integer version) {
        this.version = version;
    }
    
}
