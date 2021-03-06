// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.perform;

import es.uca.b2mml.domain.equip.Equipment;
import es.uca.b2mml.domain.perform.ProductionPerformance;
import es.uca.b2mml.domain.perform.ProductionResponse;
import es.uca.b2mml.domain.schedule.ProductionSchedule;
import java.util.Calendar;
import java.util.Set;

privileged aspect ProductionPerformance_Roo_JavaBean {
    
    public String ProductionPerformance.getPerformanceId() {
        return this.performanceId;
    }
    
    public void ProductionPerformance.setPerformanceId(String performanceId) {
        this.performanceId = performanceId;
    }
    
    public String ProductionPerformance.getDescription() {
        return this.description;
    }
    
    public void ProductionPerformance.setDescription(String description) {
        this.description = description;
    }
    
    public ProductionSchedule ProductionPerformance.getProductionSchedule() {
        return this.productionSchedule;
    }
    
    public void ProductionPerformance.setProductionSchedule(ProductionSchedule productionSchedule) {
        this.productionSchedule = productionSchedule;
    }
    
    public Calendar ProductionPerformance.getStartTime() {
        return this.startTime;
    }
    
    public void ProductionPerformance.setStartTime(Calendar startTime) {
        this.startTime = startTime;
    }
    
    public Calendar ProductionPerformance.getEndTime() {
        return this.endTime;
    }
    
    public void ProductionPerformance.setEndTime(Calendar endTime) {
        this.endTime = endTime;
    }
    
    public Calendar ProductionPerformance.getPublishedDate() {
        return this.publishedDate;
    }
    
    public void ProductionPerformance.setPublishedDate(Calendar publishedDate) {
        this.publishedDate = publishedDate;
    }
    
    public Equipment ProductionPerformance.getLocation() {
        return this.location;
    }
    
    public void ProductionPerformance.setLocation(Equipment location) {
        this.location = location;
    }
    
    public Set<ProductionResponse> ProductionPerformance.getProductionResponses() {
        return this.productionResponses;
    }
    
    public void ProductionPerformance.setProductionResponses(Set<ProductionResponse> productionResponses) {
        this.productionResponses = productionResponses;
    }
    
}
