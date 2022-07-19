//Vurder om handlingen er udført korrekt. 200 = okay, 201 = created.
RuleSet: assertResponseCode
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is okay or created."
* test[=].action[=].assert.direction = #response
* test[=].action[=].assert.responseCode = "200,201"
* test[=].action[=].assert.operator = #in
* test[=].action[=].assert.warningOnly = false

RuleSet: assertResponseNotFound
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is not found."
* test[=].action[=].assert.direction = #response
* test[=].action[=].assert.response = #notFound
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.warningOnly = false

// test asserts. not used atm.
RuleSet: assertMessageIdInProvenance 
* test[=].action[+].assert.description = "Confirm that Provenance.target references the correct MessagHeader.id" 
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(MessageHeader).id = %resource.entry.resource.ofType(Provenance).target.reference.replace('MessageHeader/', '') or Bundle.entry.resource.ofType(MessageHeader).id = %resource.entry.resource.ofType(Provenance).target.reference.replace('urn:uuid:', '')" 
* test[=].action[=].assert.warningOnly = false

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

RuleSet: assertGetIdCreated(activitycode, number)
* test[=].action[+].assert.description = "Get patient id " 
* test[=].action[=].assert.direction = #response
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Patient).id" 
* test[=].action[=].assert.warningOnly = false
* test[=].action[=].assert.sourceId = "create-{activitycode}-{number}"