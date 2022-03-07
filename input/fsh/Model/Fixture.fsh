/*
PARAM: 
    number: testflow sequent number 
    fixture: Path to fixture
*/
RuleSet: fixtureCareCommunication(number, fixturePath)
* fixture[+].id = "fix-bundle-create-{number}"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource.reference = "{fixturePath}"