// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.people;

import es.uca.b2mml.domain.people.PersonClass;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PersonClass_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PersonClass.entityManager;
    
    public static final EntityManager PersonClass.entityManager() {
        EntityManager em = new PersonClass().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PersonClass.countPersonClasses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PersonClass o", Long.class).getSingleResult();
    }
    
    public static List<PersonClass> PersonClass.findAllPersonClasses() {
        return entityManager().createQuery("SELECT o FROM PersonClass o", PersonClass.class).getResultList();
    }
    
    public static PersonClass PersonClass.findPersonClass(Long id) {
        if (id == null) return null;
        return entityManager().find(PersonClass.class, id);
    }
    
    public static List<PersonClass> PersonClass.findPersonClassEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PersonClass o", PersonClass.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PersonClass.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PersonClass.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PersonClass attached = PersonClass.findPersonClass(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PersonClass.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PersonClass.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PersonClass PersonClass.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PersonClass merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
