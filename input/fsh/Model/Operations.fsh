/* RuleSet: actionOperationDeleteCareCommunication(destinationUri)
* test[+].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/test[=]script-operation-codes"
* test[=].action[=].operation.type.code = #delete
* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.description = "System-generated search and delete operations from conditional delete on Bundle.destination.endpoint"
* test[=].action[=].operation.accept = #xml
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.params = "?message.destination-uri=${destinationUri}"


RuleSet: actionOperationCreateCareCommunication(number)
* test[+].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/test[=]script-operation-codes"
* test[=].action[=].operation.type.code = #create
* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.description = "Send a new CareCommunication message." //TODO change name
* test[=].action[=].operation.accept = #xml
* test[=].action[=].operation.contentType = #xml
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.destination = 1
* test[=].action[=].operation.origin = 1
* test[=].action[=].operation.sourceId = "create-newmessage-01" 
//* test[=][=].action[=].operation.responseId = "initialMessage{number}" */

RuleSet: setupOperationDelete
* setup.action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* setup.action[=].operation.type.code = #delete
* setup.action[=].operation.resource = #Bundle
* setup.action[=].operation.description = "System-generated search and delete operations from conditional delete on Bundle MessageHeader).destination.endpoint"
* setup.action[=].operation.accept = #xml
* setup.action[=].operation.encodeRequestUrl = true
* setup.action[=].operation.params = "?message.destination-uri=${destinationUri}"

RuleSet: setupOperationCreate(activitycode, number)
* setup.action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* setup.action[=].operation.type.code = #create
* setup.action[=].operation.resource = #Bundle
* setup.action[=].operation.description = "Create the Bundle resource in XML format on the destination server."
* setup.action[=].operation.accept = #xml
* setup.action[=].operation.contentType = #xml
* setup.action[=].operation.encodeRequestUrl = true
* setup.action[=].operation.responseId = "create-message-{number}"
* setup.action[=].operation.sourceId = "create-{activitycode}-{number}"

RuleSet: testOperationOKRead
* test[+].id = "testOperationOKRead"
* test[=].name = "Read a created message"
* test[=].description = "Read a created message, corresponds to 'GET' from API"
* test[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[=].action[=].operation.type.code = #read
* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.description = "Read a created message, corresponds to 'GET' from API"
* test[=].action[=].operation.accept = #xml
* test[=].action[=].operation.destination = 1
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.origin = 1
* test[=].action[=].operation.params = "?message.destination-uri=${destinationUri}"
* test[=].action[=].operation.responseId = "get-ok"
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.direction = #response
* test[=].action[=].assert.responseCode = "200"
* test[=].action[=].assert.warningOnly = false


RuleSet: testOperationCreate(activitycode, number)
* test[+].id = "testOperationCreate"
* test[=].name = "Create a message"
* test[=].description = "Create message, corresponds to 'POST' from API"
* test[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[=].action[=].operation.type.code = #create
* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.description = "Create a message, corresponds to 'POST' from API"
* test[=].action[=].operation.destination = 1
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.origin = 1
* test[=].action[=].operation.responseId = "create-message-{number}"
* test[=].action[=].operation.sourceId = "create-{activitycode}-{number}" 

RuleSet: testOperationSearch
* test[+].id = "testOperationSearch"
* test[=].name = "Search a message"
* test[=].description = "Search message, corresponds to 'GET' from API"
* test[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[=].action[=].operation.type.code = #search
* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.description = "Search a message, corresponds to PUT from API"
* test[=].action[=].operation.accept = #xml
* test[=].action[=].operation.destination = 1
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.origin = 1
* test[=].action[=].operation.params = "?identifier=${searchParamIdentifier}"
* test[=].action[=].operation.responseId = "search-message-ok"

RuleSet: testOperationSearchNotFound
* test[+].id = "testOperationSearchNotFound"
* test[=].name = "Search a deleted message"
* test[=].description = "Search message, corresponds to 'GET' from API"
* test[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[=].action[=].operation.type.code = #search
* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.description = "Search a message, corresponds to PUT from API"
* test[=].action[=].operation.accept = #xml
* test[=].action[=].operation.destination = 1
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.origin = 1
* test[=].action[=].operation.params = "?identifier=${searchParamIdentifier}"
* test[=].action[=].operation.responseId = "search-message-notFound"

RuleSet: testOperationUpdate(activitycode, number)
* test[+].id = "testOperationUpdate"
* test[=].name = "Update a message"
* test[=].description = "Update message, corresponds to 'PUT' from API"
* test[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[=].action[=].operation.type.code = #update
* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.description = "Update a message, corresponds to 'PUT' from API"
* test[=].action[=].operation.accept = #xml
* test[=].action[=].operation.destination = 1
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.origin = 1
* test[=].action[=].operation.params = "?identifier=${searchParamIdentifier}"
* test[=].action[=].operation.responseId = "update-message-ok"
* test[=].action[=].operation.sourceId = "update-{activitycode}-{number}"

RuleSet: testOperationProcessMessage(activitycode, number)
* test[+].id = "testOperationProcessMessage"
* test[=].name = "Process message"
* test[=].description = "Process message, corresponds to 'POST' from API"
* test[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[=].action[=].operation.type.code = #process-message
//* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.accept = #xml
* test[=].action[=].operation.contentType = #xml
* test[=].action[=].operation.description = "Process a message to forward."
* test[=].action[=].operation.destination = 1
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.origin = 1
* test[=].action[=].operation.params = "/${process-message}"
* test[=].action[=].operation.requestId = "process-message-{number}"
* test[=].action[=].operation.sourceId = "process-{activitycode}-{number}" 

RuleSet: testOperationForward(activitycode, number)
* test[+].id = "testOperationforward"
* test[=].name = "Forward a message"
* test[=].description = "Forward message, corresponds to 'PUT' from API"
* test[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[=].action[=].operation.type.code = #process-message
* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.description = "Forward a message, corresponds to 'PUT' from API"
* test[=].action[=].operation.accept = #xml
* test[=].action[=].operation.destination = 2
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.origin = 2
* test[=].action[=].operation.params = "/${process-message}"
//* test[=].action[=].operation.responseId = "forward-message-ok"
* test[=].action[=].operation.sourceId = "forward-{activitycode}-{number}"

RuleSet: testOperationCancel
* test[+].id = "testOperationCancel"
* test[=].name = "Cancel a message"
* test[=].description = "Create a message (Post) and then cancel the message (delete)"
* test[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[=].action[=].operation.type.code = #deleteCondSingle
* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.description = "Cancel a message"
* test[=].action[=].operation.accept = #xml
* test[=].action[=].operation.destination = 1
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.origin = 1
* test[=].action[=].operation.params = "?identifier=${searchParamIdentifier}"
//* test[=].action[=].operation.responseId = "Cancel-message-ok"
//* test[=].action[=].operation.sourceId = "cancel-{activitycode}-{number}"