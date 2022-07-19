RuleSet: assertGetIdCreated(number, activitycode, fixture) //TODO change name
//Server and client
* insert originClient
* insert destinationServer
//Fixture
* insert fixtureNewMessage({fixture}, {activitycode}, {number})
//Profile
* insert profileCareCommunication

//Variable
* variable[+].name = "destinationUri"
* variable[=].expression = "Bundle.entry.resource.ofType(Patient).id"
* variable[=].sourceId = "create-{activitycode}-{number}" 
//Setup
* insert setupOperationDelete
//Tests
* insert testOperationCreate({activitycode}, {number})
* insert assertResponseCode
* insert assertGetNameCreated({activitycode}, {number})
