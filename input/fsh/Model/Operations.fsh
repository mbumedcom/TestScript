RuleSet: actionOperationCAreCouminication(number)
* test[+].id = "ffb-{number}" //TODO change name
* test[=].name = "{number} Post xxtype" //TODO change name
* test[=].description = "Post ffb-report"  //TODO change name
* test[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[=].action[=].operation.type.code = #create
* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.description = "Post a ffb-report" //TODO change name
* test[=].action[=].operation.destination = 1
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.origin = 1
* test[=].action[=].operation.sourceId = "fix-bundle-create-{number}" 
* test[=].action[=].operation.responseId = "bundle-create-{number}"