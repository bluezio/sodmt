// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.people;

import es.uca.b2mml.domain.people.Person;
import es.uca.b2mml.domain.people.PersonClass;
import java.util.Set;

privileged aspect PersonClass_Roo_JavaBean {
    
    public String PersonClass.getName() {
        return this.name;
    }
    
    public void PersonClass.setName(String name) {
        this.name = name;
    }
    
    public String PersonClass.getDescription() {
        return this.description;
    }
    
    public void PersonClass.setDescription(String description) {
        this.description = description;
    }
    
    public Set<Person> PersonClass.getMembers() {
        return this.members;
    }
    
    public void PersonClass.setMembers(Set<Person> members) {
        this.members = members;
    }
    
}
