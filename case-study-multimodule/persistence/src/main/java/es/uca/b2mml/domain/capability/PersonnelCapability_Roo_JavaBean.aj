// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.capability;

import es.uca.b2mml.domain.capability.PersonnelCapability;
import es.uca.b2mml.domain.capability.PersonnelCapabilityProperty;
import es.uca.b2mml.domain.people.Person;
import es.uca.b2mml.domain.people.PersonClass;
import java.util.Set;

privileged aspect PersonnelCapability_Roo_JavaBean {
    
    public PersonClass PersonnelCapability.getPersonnelClass() {
        return this.personnelClass;
    }
    
    public void PersonnelCapability.setPersonnelClass(PersonClass personnelClass) {
        this.personnelClass = personnelClass;
    }
    
    public Person PersonnelCapability.getPerson() {
        return this.person;
    }
    
    public void PersonnelCapability.setPerson(Person person) {
        this.person = person;
    }
    
    public Set<PersonnelCapabilityProperty> PersonnelCapability.getProperties() {
        return this.properties;
    }
    
    public void PersonnelCapability.setProperties(Set<PersonnelCapabilityProperty> properties) {
        this.properties = properties;
    }
    
}
