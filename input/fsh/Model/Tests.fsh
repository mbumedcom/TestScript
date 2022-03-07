//test Careplan contains MunicipalityCasenumber from first Encounter
//param: status = e.g. active, intent = e.g. order and no = No of expected Careplans 
RuleSet: testCarePlanMunicipalityCaseNumber //TODO change name
* test[=].action[+].assert.description = "Confirm that the Careplan Careplan contains MunicipalityCasenumber: ${municipalityCaseNumber} from first Encounter" //TODO change name
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(CarePlan).extension.where(url= 'http://ffb/reporting/kl.dk/1.0/StructureDefinition/kl-reporting-ffb-municipalityCaseNumber').all(extension.value.value = '${municipalityCaseNumber}')" //TODO change name
* test[=].action[=].assert.warningOnly = false

RuleSet: testPatientExists 
* test[=].action[+].assert.description = "Test Patient exists in bundle"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Patient).exists()"
* test[=].action[=].assert.warningOnly = false