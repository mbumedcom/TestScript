RuleSet: TestUpdateMessage(number, activitycode, fixture) //TODO change name
//Server and client
* insert originClient
* insert destinationServer
//Fixture
* insert fixtureUpdateMessage({fixture}, {activitycode}, {number})
//Profile
* insert profileCareCommunication

//Variable

//setup

//test
* insert testOperationUpdate({activitycode}, {number})
* insert assertResponseCode
* insert assertGetNameUpdated({activitycode}, {number})
