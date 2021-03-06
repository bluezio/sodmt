// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.psegment;

import es.uca.b2mml.domain.psegment.ProcessSegmentDependency;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ProcessSegmentDependency_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ProcessSegmentDependency.entityManager;
    
    public static final EntityManager ProcessSegmentDependency.entityManager() {
        EntityManager em = new ProcessSegmentDependency().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ProcessSegmentDependency.countProcessSegmentDependencies() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ProcessSegmentDependency o", Long.class).getSingleResult();
    }
    
    public static List<ProcessSegmentDependency> ProcessSegmentDependency.findAllProcessSegmentDependencies() {
        return entityManager().createQuery("SELECT o FROM ProcessSegmentDependency o", ProcessSegmentDependency.class).getResultList();
    }
    
    public static ProcessSegmentDependency ProcessSegmentDependency.findProcessSegmentDependency(Long id) {
        if (id == null) return null;
        return entityManager().find(ProcessSegmentDependency.class, id);
    }
    
    public static List<ProcessSegmentDependency> ProcessSegmentDependency.findProcessSegmentDependencyEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ProcessSegmentDependency o", ProcessSegmentDependency.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ProcessSegmentDependency.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ProcessSegmentDependency.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ProcessSegmentDependency attached = ProcessSegmentDependency.findProcessSegmentDependency(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ProcessSegmentDependency.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ProcessSegmentDependency.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ProcessSegmentDependency ProcessSegmentDependency.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ProcessSegmentDependency merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
