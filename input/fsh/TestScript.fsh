Instance: ReadNewMessage
InstanceOf: TestScript
* insert Metadata
* id = "medcom-read-new-message" 
* name = "Read a new message" 
* title = "Read a New Message" 
* description = "Read/get an existing message. Corresponds to receiving a new message" 
* insert TestReadMessage(01, new-message, /FHIRSandbox/MedCom/TSCareCommunicationTMS/fixtureNewMessage.xml) 

Instance: CreateNewMessage
InstanceOf: TestScript
* insert Metadata
* id = "medcom-create-new-message" 
* name = "Create a new message" 
* title = "Create a New Message" 
* description = "Create/post a message. Corresponds to sending a message" 
* insert TestCreateMessage(01, new-message, /FHIRSandbox/MedCom/TSCareCommunicationTMS/fixtureNewMessage.xml) 

Instance: UpdateNewMessage
InstanceOf: TestScript
* insert Metadata
* id = "medcom-update-new-message" 
* name = "Update a new message" 
* title = "Update a New Message" 
* description = "Update a message" 
* insert TestCreateMessage(01, new-message, /FHIRSandbox/MedCom/TSCareCommunicationTMS/fixtureNewMessage.xml) 
* insert TestSearchMessage(01, new-message)
* insert TestUpdateMessage(02, modified-message, /FHIRSandbox/MedCom/TSCareCommunicationTMS/fixtureUpdateMessage.xml)