RuleSet: variableMessageHeaderID(number) //TODO change name
* variable[+].name = "municipalityCaseNumber" //TODO change name
* variable[=].expression = "Bundle.entry.resource.ofType(ServiceRequest).extension.where(url= 'http://ffb/reporting/kl.dk/1.0/StructureDefinition/kl-reporting-ffb-municipalityCaseNumber').extension.where(url= 'municipalitySpecific').value.value" //TODO change name
* variable[=].sourceId = "bundle-create-{number}"

/* Example of an Observation full URL var
RuleSet: variableObservationFullUrl(number)
* variable[+].name = "observationFullUrl{number}"
* variable[=].expression = "Bundle.entry.where(resource.ofType(Observation)).fullUrl"
* variable[=].sourceId = "bundle-create-{number}"
*/