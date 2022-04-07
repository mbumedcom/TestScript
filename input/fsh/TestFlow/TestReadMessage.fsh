RuleSet: TestReadMessage(number, activitycode, fixture) //TODO change name
//Server and client
* insert originClient
* insert destinationServer
//Fixture
* insert fixtureNewMessage({fixture}, {activitycode}, {number})
//Profile
* insert profileCareCommunication

//Variable
* variable[+].name = "destinationUri"
* variable[=].expression = "Bundle.entry.resource.ofType(MessageHeader).destination.endpoint"
* variable[=].sourceId = "create-{activitycode}-{number}" 



//Setup
* insert setupOperationDelete
* insert setupOperationCreate({activitycode}, {number})

//Tests
* insert testOperationOKRead

