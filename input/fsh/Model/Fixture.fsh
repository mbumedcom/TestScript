
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