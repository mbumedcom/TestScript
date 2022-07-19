RuleSet: TestForwardMessage(number, activitycode, fixture) //TODO change name
//Server and client
/* * insert originClient
* insert destinationServer
* insert forwardClient
* insert forwardServer */
//Fixture
* insert fixtureForwardMessage({fixture}, {activitycode}, {number})
//Profile
* insert profileCareCommunication

//Variable

//setup

//test
* insert testOperationForward({activitycode}, {number})
* insert assertResponseCode