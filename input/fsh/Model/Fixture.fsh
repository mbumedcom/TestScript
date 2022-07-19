
RuleSet: fixtureNewMessage(fixture, activitycode, number)
* fixture[+].id = "create-{activitycode}-{number}"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource.reference = "{fixture}"

RuleSet: fixtureUpdateMessage(fixture, activitycode, number)
* fixture[+].id = "update-{activitycode}-{number}"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource.reference = "{fixture}"

RuleSet: fixtureProcessMessage(fixture, activitycode, number)
* fixture[+].id = "process-{activitycode}-{number}"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource.reference = "{fixture}"

RuleSet: fixtureForwardMessage(fixture, activitycode, number)
* fixture[+].id = "forward-{activitycode}-{number}"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource.reference = "{fixture}"

RuleSet: assertGetIdCreated(fixture, activitycode, number)
* fixture[+].id = "forward-{activitycode}-{number}"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource.reference = "{fixture}"