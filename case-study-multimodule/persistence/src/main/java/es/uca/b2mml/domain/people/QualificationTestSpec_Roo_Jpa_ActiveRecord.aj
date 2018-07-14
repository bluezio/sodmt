// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.people;

import es.uca.b2mml.domain.people.QualificationTestSpec;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect QualificationTestSpec_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager QualificationTestSpec.entityManager;
    
    public static final EntityManager QualificationTestSpec.entityManager() {
        EntityManager em = new QualificationTestSpec().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long QualificationTestSpec.countQualificationTestSpecs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM QualificationTestSpec o", Long.class).getSingleResult();
    }
    
    public static List<QualificationTestSpec> QualificationTestSpec.findAllQualificationTestSpecs() {
        return entityManager().createQuery("SELECT o FROM QualificationTestSpec o", QualificationTestSpec.class).getResultList();
    }
    
    public static QualificationTestSpec QualificationTestSpec.findQualificationTestSpec(Long id) {
        if (id == null) return null;
        return entityManager().find(QualificationTestSpec.class, id);
    }
    
    public static List<QualificationTestSpec> QualificationTestSpec.findQualificationTestSpecEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM QualificationTestSpec o", QualificationTestSpec.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void QualificationTestSpec.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void QualificationTestSpec.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            QualificationTestSpec attached = QualificationTestSpec.findQualificationTestSpec(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void QualificationTestSpec.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void QualificationTestSpec.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public QualificationTestSpec QualificationTestSpec.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        QualificationTestSpec merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}