// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.b2mml.domain.material;

import es.uca.b2mml.domain.Unit;
import es.uca.b2mml.domain.material.MaterialLotProperty;
import es.uca.b2mml.domain.material.QATestResult;
import es.uca.b2mml.domain.material.QATestSpec;
import java.util.Calendar;

privileged aspect QATestResult_Roo_JavaBean {
    
    public QATestSpec QATestResult.getTestSpec() {
        return this.testSpec;
    }
    
    public void QATestResult.setTestSpec(QATestSpec testSpec) {
        this.testSpec = testSpec;
    }
    
    public MaterialLotProperty QATestResult.getLotProperty() {
        return this.lotProperty;
    }
    
    public void QATestResult.setLotProperty(MaterialLotProperty lotProperty) {
        this.lotProperty = lotProperty;
    }
    
    public String QATestResult.getResultId() {
        return this.resultId;
    }
    
    public void QATestResult.setResultId(String resultId) {
        this.resultId = resultId;
    }
    
    public String QATestResult.getDescription() {
        return this.description;
    }
    
    public void QATestResult.setDescription(String description) {
        this.description = description;
    }
    
    public Calendar QATestResult.getResultDate() {
        return this.resultDate;
    }
    
    public void QATestResult.setResultDate(Calendar resultDate) {
        this.resultDate = resultDate;
    }
    
    public String QATestResult.getTestResult() {
        return this.testResult;
    }
    
    public void QATestResult.setTestResult(String testResult) {
        this.testResult = testResult;
    }
    
    public Unit QATestResult.getUnit() {
        return this.unit;
    }
    
    public void QATestResult.setUnit(Unit unit) {
        this.unit = unit;
    }
    
    public Calendar QATestResult.getExpirationDate() {
        return this.expirationDate;
    }
    
    public void QATestResult.setExpirationDate(Calendar expirationDate) {
        this.expirationDate = expirationDate;
    }
    
}
