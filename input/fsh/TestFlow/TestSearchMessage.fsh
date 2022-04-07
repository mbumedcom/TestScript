RuleSet: TestSearchMessage(number, activitycode) //TODO change name
//Server and client
* insert originClient
* insert destinationServer
//Fixture
//Profile
* insert profileCareCommunication

//Variable
* variable[+].name = "searchParamIdentifier" 
* variable[=].expression = "Bundle.entry.resource.ofType(MessageHeader).id"
* variable[=].sourceId = "create-{activitycode}-{number}" //from create operation

//setup

//test
* insert testOperationSearch({activitycode}, {number})

