Instance: ReadMessage
InstanceOf: TestScript
* insert Metadata
* id = "medcom-read-message" 
* name = "Read a message" 
* title = "Read a Message" 
* description = "Read/get an existing message. Corresponds to receiving a message" 
* insert TestReadMessage(01, new-message, /FHIRSandbox/MedCom/TSCareCommunicationTMS/fixtureNewMessage.xml) 

Instance: CreateMessage
InstanceOf: TestScript
* insert Metadata
* id = "medcom-create-message" 
* name = "Create a message" 
* title = "Create a Message" 
* description = "Create/post a message. Corresponds to sending a message" 
* insert TestCreateMessage(01, new-message, /FHIRSandbox/MedCom/TSCareCommunicationTMS/fixtureNewMessage.xml) 

Instance: UpdateMessage
InstanceOf: TestScript
* insert Metadata
* id = "medcom-update-message" 
* name = "Update a message" 
* title = "Update a Message" 
* description = "Update a message" 
* insert TestCreateMessage(01, new-message, /FHIRSandbox/MedCom/TSCareCommunicationTMS/fixtureNewMessage.xml) 
* insert TestSearchMessage(01, new-message)
* insert TestUpdateMessage(02, modified-message, /FHIRSandbox/MedCom/TSCareCommunicationTMS/fixtureUpdateMessage.xml)

Instance: ForwardMessage
InstanceOf: TestScript
* insert Metadata
* id = "medcom-forward-message" 
* name = "Forward a message" 
* title = "Forward a Message" 
* description = "Forward a message" 
* insert TestProcessMessage(01, new-message, /FHIRSandbox/MedCom/TSCareCommunicationTMS/fixtureProcessMessage.xml) 
* insert TestForwardMessage(02, forward-message, /FHIRSandbox/MedCom/TSCareCommunicationTMS/fixtureForwardMessage.xml) 

Instance: CancelMessage
InstanceOf: TestScript
* insert Metadata
* id = "medcom-cancel-message" 
* name = "Cancel a message" 
* title = "Cancel a Message" 
* description = "Cancel a message" 
* insert TestCreateMessage(01, new-message, /FHIRSandbox/MedCom/TSCareCommunicationTMS/fixtureCancelMessage.xml) 
* insert TestSearchMessage(01, new-message)
* insert TestCancelMessage 
* insert TestSearchMessageNotFound(01, new-message)