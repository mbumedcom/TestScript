RuleSet: TestProcessMessage(number, activitycode, fixture) //TODO change name
//Server and client
* insert originClient
* insert destinationServer
* insert forwardClient
* insert forwardServer
//Fixture
* insert fixtureProcessMessage({fixture}, {activitycode}, {number})
//Profile
* insert profileCareCommunication

//Variable

//setup

//test
* insert testOperationProcessMessage({activitycode}, {number})
* insert assertResponseCode
