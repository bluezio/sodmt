// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.people;

import es.uca.b2mml.domain.people.Person;
import es.uca.b2mml.domain.people.PersonClass;
import java.util.Set;

privileged aspect Person_Roo_JavaBean {
    
    public String Person.getName() {
        return this.name;
    }
    
    public void Person.setName(String name) {
        this.name = name;
    }
    
    public String Person.getSurnames() {
        return this.surnames;
    }
    
    public void Person.setSurnames(String surnames) {
        this.surnames = surnames;
    }
    
    public String Person.getNationalID() {
        return this.nationalID;
    }
    
    public void Person.setNationalID(String nationalID) {
        this.nationalID = nationalID;
    }
    
    public String Person.getDescription() {
        return this.description;
    }
    
    public void Person.setDescription(String description) {
        this.description = description;
    }
    
    public Set<PersonClass> Person.getClasses() {
        return this.classes;
    }
    
    public void Person.setClasses(Set<PersonClass> classes) {
        this.classes = classes;
    }
    
}
