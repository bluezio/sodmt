// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.product;

import es.uca.b2mml.domain.product.ProductProductionRule;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect ProductProductionRule_Roo_Jpa_Entity {
    
    declare @type: ProductProductionRule: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long ProductProductionRule.id;
    
    @Version
    @Column(name = "version_")
    private Integer ProductProductionRule.version_;
    
    public Long ProductProductionRule.getId() {
        return this.id;
    }
    
    public void ProductProductionRule.setId(Long id) {
        this.id = id;
    }
    
    public Integer ProductProductionRule.getVersion_() {
        return this.version_;
    }
    
    public void ProductProductionRule.setVersion_(Integer version) {
        this.version_ = version;
    }
    
}
