// test asserts. not used atm.
RuleSet: assertMessageIdInProvenance 
* test[=].action[+].assert.description = "Confirm that Provenance.target references the correct MessagHeader.id" 
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(MessageHeader).id = %resource.entry.resource.ofType(Provenance).target.reference.replace('MessageHeader/', '') or Bundle.entry.resource.ofType(MessageHeader).id = %resource.entry.resource.ofType(Provenance).target.reference.replace('urn:uuid:', '')" 
* test[=].action[=].assert.warningOnly = false

/* RuleSet: assertContentType 
* test[=].action[+].assert.description = "Confirm that the Bundle included a contentType of either XML or JSON format." 
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.contentType = #fhir+xml
* test[=].action[=].assert.warningOnly = false */

RuleSet: assertGetNameCreated(activitycode, number)
* test[=].action[+].assert.description = "Get Patient name" 
* test[=].action[=].assert.direction = #response
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Patient).name.given" 
* test[=].action[=].assert.warningOnly = false
* test[=].action[=].assert.sourceId = "create-{activitycode}-{number}"

RuleSet: assertGetNameUpdated(activitycode, number)
* test[=].action[+].assert.description = "Get Patient name" 
* test[=].action[=].assert.direction = #response
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Patient).name.given" 
* test[=].action[=].assert.warningOnly = false
* test[=].action[=].assert.sourceId = "update-{activitycode}-{number}"