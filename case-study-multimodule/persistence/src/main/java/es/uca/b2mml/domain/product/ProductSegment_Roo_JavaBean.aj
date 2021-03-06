// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.product;

import es.uca.b2mml.domain.QuantityWithUnit;
import es.uca.b2mml.domain.product.EquipmentSpec;
import es.uca.b2mml.domain.product.MaterialSpec;
import es.uca.b2mml.domain.product.PersonnelSpec;
import es.uca.b2mml.domain.product.ProductParameter;
import es.uca.b2mml.domain.product.ProductProductionRule;
import es.uca.b2mml.domain.product.ProductSegment;
import es.uca.b2mml.domain.product.ProductSegmentDependency;
import es.uca.b2mml.domain.psegment.ProcessSegment;
import java.util.Set;

privileged aspect ProductSegment_Roo_JavaBean {
    
    public ProductSegment ProductSegment.getParent() {
        return this.parent;
    }
    
    public void ProductSegment.setParent(ProductSegment parent) {
        this.parent = parent;
    }
    
    public Set<ProductSegment> ProductSegment.getChildren() {
        return this.children;
    }
    
    public void ProductSegment.setChildren(Set<ProductSegment> children) {
        this.children = children;
    }
    
    public ProductProductionRule ProductSegment.getRule() {
        return this.rule;
    }
    
    public void ProductSegment.setRule(ProductProductionRule rule) {
        this.rule = rule;
    }
    
    public String ProductSegment.getSegmentId() {
        return this.segmentId;
    }
    
    public void ProductSegment.setSegmentId(String segmentId) {
        this.segmentId = segmentId;
    }
    
    public String ProductSegment.getDescription() {
        return this.description;
    }
    
    public void ProductSegment.setDescription(String description) {
        this.description = description;
    }
    
    public QuantityWithUnit ProductSegment.getDuration() {
        return this.duration;
    }
    
    public void ProductSegment.setDuration(QuantityWithUnit duration) {
        this.duration = duration;
    }
    
    public Set<ProductSegmentDependency> ProductSegment.getOutgoingDependencies() {
        return this.outgoingDependencies;
    }
    
    public void ProductSegment.setOutgoingDependencies(Set<ProductSegmentDependency> outgoingDependencies) {
        this.outgoingDependencies = outgoingDependencies;
    }
    
    public Set<ProductSegmentDependency> ProductSegment.getIncomingDependencies() {
        return this.incomingDependencies;
    }
    
    public void ProductSegment.setIncomingDependencies(Set<ProductSegmentDependency> incomingDependencies) {
        this.incomingDependencies = incomingDependencies;
    }
    
    public Set<ProcessSegment> ProductSegment.getProcessSegment() {
        return this.processSegment;
    }
    
    public void ProductSegment.setProcessSegment(Set<ProcessSegment> processSegment) {
        this.processSegment = processSegment;
    }
    
    public Set<ProductParameter> ProductSegment.getParameters() {
        return this.parameters;
    }
    
    public void ProductSegment.setParameters(Set<ProductParameter> parameters) {
        this.parameters = parameters;
    }
    
    public Set<PersonnelSpec> ProductSegment.getPersonnel() {
        return this.personnel;
    }
    
    public void ProductSegment.setPersonnel(Set<PersonnelSpec> personnel) {
        this.personnel = personnel;
    }
    
    public Set<MaterialSpec> ProductSegment.getMaterials() {
        return this.materials;
    }
    
    public void ProductSegment.setMaterials(Set<MaterialSpec> materials) {
        this.materials = materials;
    }
    
    public Set<EquipmentSpec> ProductSegment.getEquipment() {
        return this.equipment;
    }
    
    public void ProductSegment.setEquipment(Set<EquipmentSpec> equipment) {
        this.equipment = equipment;
    }
    
}
