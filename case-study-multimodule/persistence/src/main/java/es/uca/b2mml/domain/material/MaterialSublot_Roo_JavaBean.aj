// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.material;

import es.uca.b2mml.domain.QuantityWithUnit;
import es.uca.b2mml.domain.equip.Equipment;
import es.uca.b2mml.domain.material.MaterialLot;
import es.uca.b2mml.domain.material.MaterialLotStatus;
import es.uca.b2mml.domain.material.MaterialSublot;

privileged aspect MaterialSublot_Roo_JavaBean {
    
    public MaterialLot MaterialSublot.getLot() {
        return this.lot;
    }
    
    public void MaterialSublot.setLot(MaterialLot lot) {
        this.lot = lot;
    }
    
    public MaterialSublot MaterialSublot.getParent() {
        return this.parent;
    }
    
    public void MaterialSublot.setParent(MaterialSublot parent) {
        this.parent = parent;
    }
    
    public String MaterialSublot.getSublotId() {
        return this.sublotId;
    }
    
    public void MaterialSublot.setSublotId(String sublotId) {
        this.sublotId = sublotId;
    }
    
    public String MaterialSublot.getDescription() {
        return this.description;
    }
    
    public void MaterialSublot.setDescription(String description) {
        this.description = description;
    }
    
    public MaterialLotStatus MaterialSublot.getStatus() {
        return this.status;
    }
    
    public void MaterialSublot.setStatus(MaterialLotStatus status) {
        this.status = status;
    }
    
    public QuantityWithUnit MaterialSublot.getQuantity() {
        return this.quantity;
    }
    
    public void MaterialSublot.setQuantity(QuantityWithUnit quantity) {
        this.quantity = quantity;
    }
    
    public Equipment MaterialSublot.getStorageLocation() {
        return this.storageLocation;
    }
    
    public void MaterialSublot.setStorageLocation(Equipment storageLocation) {
        this.storageLocation = storageLocation;
    }
    
}
