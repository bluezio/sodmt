// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.perform;

import es.uca.b2mml.domain.perform.EquipmentActual;
import es.uca.b2mml.domain.perform.MaterialActual;
import es.uca.b2mml.domain.perform.PersonnelActual;
import es.uca.b2mml.domain.perform.ProductionData;
import es.uca.b2mml.domain.perform.ProductionResponse;
import es.uca.b2mml.domain.perform.SegmentResponse;
import es.uca.b2mml.domain.psegment.ProcessSegment;
import java.util.Calendar;
import java.util.Set;

privileged aspect SegmentResponse_Roo_JavaBean {
    
    public ProductionResponse SegmentResponse.getProductionResponse() {
        return this.productionResponse;
    }
    
    public void SegmentResponse.setProductionResponse(ProductionResponse productionResponse) {
        this.productionResponse = productionResponse;
    }
    
    public ProcessSegment SegmentResponse.getProcessSegment() {
        return this.processSegment;
    }
    
    public void SegmentResponse.setProcessSegment(ProcessSegment processSegment) {
        this.processSegment = processSegment;
    }
    
    public String SegmentResponse.getResponseId() {
        return this.responseId;
    }
    
    public void SegmentResponse.setResponseId(String responseId) {
        this.responseId = responseId;
    }
    
    public String SegmentResponse.getDescription() {
        return this.description;
    }
    
    public void SegmentResponse.setDescription(String description) {
        this.description = description;
    }
    
    public Calendar SegmentResponse.getActualStartTime() {
        return this.actualStartTime;
    }
    
    public void SegmentResponse.setActualStartTime(Calendar actualStartTime) {
        this.actualStartTime = actualStartTime;
    }
    
    public Calendar SegmentResponse.getActualEndTime() {
        return this.actualEndTime;
    }
    
    public void SegmentResponse.setActualEndTime(Calendar actualEndTime) {
        this.actualEndTime = actualEndTime;
    }
    
    public Set<ProductionData> SegmentResponse.getProductionData() {
        return this.productionData;
    }
    
    public void SegmentResponse.setProductionData(Set<ProductionData> productionData) {
        this.productionData = productionData;
    }
    
    public Set<PersonnelActual> SegmentResponse.getPersonnelActuals() {
        return this.personnelActuals;
    }
    
    public void SegmentResponse.setPersonnelActuals(Set<PersonnelActual> personnelActuals) {
        this.personnelActuals = personnelActuals;
    }
    
    public Set<EquipmentActual> SegmentResponse.getEquipmentActuals() {
        return this.equipmentActuals;
    }
    
    public void SegmentResponse.setEquipmentActuals(Set<EquipmentActual> equipmentActuals) {
        this.equipmentActuals = equipmentActuals;
    }
    
    public Set<MaterialActual> SegmentResponse.getMaterialActuals() {
        return this.materialActuals;
    }
    
    public void SegmentResponse.setMaterialActuals(Set<MaterialActual> materialActuals) {
        this.materialActuals = materialActuals;
    }
    
}
