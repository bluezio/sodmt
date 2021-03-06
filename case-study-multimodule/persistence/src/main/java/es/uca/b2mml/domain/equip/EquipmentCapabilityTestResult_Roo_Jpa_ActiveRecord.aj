// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.equip;

import es.uca.b2mml.domain.equip.EquipmentCapabilityTestResult;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect EquipmentCapabilityTestResult_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager EquipmentCapabilityTestResult.entityManager;
    
    public static final EntityManager EquipmentCapabilityTestResult.entityManager() {
        EntityManager em = new EquipmentCapabilityTestResult().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long EquipmentCapabilityTestResult.countEquipmentCapabilityTestResults() {
        return entityManager().createQuery("SELECT COUNT(o) FROM EquipmentCapabilityTestResult o", Long.class).getSingleResult();
    }
    
    public static List<EquipmentCapabilityTestResult> EquipmentCapabilityTestResult.findAllEquipmentCapabilityTestResults() {
        return entityManager().createQuery("SELECT o FROM EquipmentCapabilityTestResult o", EquipmentCapabilityTestResult.class).getResultList();
    }
    
    public static EquipmentCapabilityTestResult EquipmentCapabilityTestResult.findEquipmentCapabilityTestResult(Long id) {
        if (id == null) return null;
        return entityManager().find(EquipmentCapabilityTestResult.class, id);
    }
    
    public static List<EquipmentCapabilityTestResult> EquipmentCapabilityTestResult.findEquipmentCapabilityTestResultEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM EquipmentCapabilityTestResult o", EquipmentCapabilityTestResult.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void EquipmentCapabilityTestResult.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void EquipmentCapabilityTestResult.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            EquipmentCapabilityTestResult attached = EquipmentCapabilityTestResult.findEquipmentCapabilityTestResult(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void EquipmentCapabilityTestResult.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void EquipmentCapabilityTestResult.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public EquipmentCapabilityTestResult EquipmentCapabilityTestResult.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        EquipmentCapabilityTestResult merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
