// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.equip;

import es.uca.b2mml.domain.Priority;
import es.uca.b2mml.domain.equip.Equipment;
import es.uca.b2mml.domain.equip.MaintenanceRequest;
import es.uca.b2mml.domain.equip.MaintenanceRequestStatus;
import es.uca.b2mml.domain.people.Person;
import java.util.Calendar;

privileged aspect MaintenanceRequest_Roo_JavaBean {
    
    public Equipment MaintenanceRequest.getEquipment() {
        return this.equipment;
    }
    
    public void MaintenanceRequest.setEquipment(Equipment equipment) {
        this.equipment = equipment;
    }
    
    public String MaintenanceRequest.getRequestId() {
        return this.requestId;
    }
    
    public void MaintenanceRequest.setRequestId(String requestId) {
        this.requestId = requestId;
    }
    
    public String MaintenanceRequest.getDescription() {
        return this.description;
    }
    
    public void MaintenanceRequest.setDescription(String description) {
        this.description = description;
    }
    
    public Calendar MaintenanceRequest.getRequestedCompletionDate() {
        return this.requestedCompletionDate;
    }
    
    public void MaintenanceRequest.setRequestedCompletionDate(Calendar requestedCompletionDate) {
        this.requestedCompletionDate = requestedCompletionDate;
    }
    
    public Priority MaintenanceRequest.getPriority() {
        return this.priority;
    }
    
    public void MaintenanceRequest.setPriority(Priority priority) {
        this.priority = priority;
    }
    
    public Person MaintenanceRequest.getRequestor() {
        return this.requestor;
    }
    
    public void MaintenanceRequest.setRequestor(Person requestor) {
        this.requestor = requestor;
    }
    
    public MaintenanceRequestStatus MaintenanceRequest.getStatus() {
        return this.status;
    }
    
    public void MaintenanceRequest.setStatus(MaintenanceRequestStatus status) {
        this.status = status;
    }
    
    public Person MaintenanceRequest.getReviewer() {
        return this.reviewer;
    }
    
    public void MaintenanceRequest.setReviewer(Person reviewer) {
        this.reviewer = reviewer;
    }
    
    public Calendar MaintenanceRequest.getSubmissionDate() {
        return this.submissionDate;
    }
    
    public void MaintenanceRequest.setSubmissionDate(Calendar submissionDate) {
        this.submissionDate = submissionDate;
    }
    
    public Calendar MaintenanceRequest.getPublishedDate() {
        return this.publishedDate;
    }
    
    public void MaintenanceRequest.setPublishedDate(Calendar publishedDate) {
        this.publishedDate = publishedDate;
    }
    
}