// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.people;

import es.uca.b2mml.domain.people.PersonClassProperty;
import es.uca.b2mml.domain.people.QualificationTestSpec;

privileged aspect QualificationTestSpec_Roo_JavaBean {
    
    public String QualificationTestSpec.getTestIdentifier() {
        return this.testIdentifier;
    }
    
    public void QualificationTestSpec.setTestIdentifier(String testIdentifier) {
        this.testIdentifier = testIdentifier;
    }
    
    public PersonClassProperty QualificationTestSpec.getPersonClassProperty() {
        return this.personClassProperty;
    }
    
    public void QualificationTestSpec.setPersonClassProperty(PersonClassProperty personClassProperty) {
        this.personClassProperty = personClassProperty;
    }
    
    public String QualificationTestSpec.getTestVersion() {
        return this.testVersion;
    }
    
    public void QualificationTestSpec.setTestVersion(String testVersion) {
        this.testVersion = testVersion;
    }
    
    public String QualificationTestSpec.getDescription() {
        return this.description;
    }
    
    public void QualificationTestSpec.setDescription(String description) {
        this.description = description;
    }
    
}
