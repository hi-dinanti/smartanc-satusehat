Mapping: workflow-for-CarePlan
Id: workflow
Title: "Workflow Pattern"
Source: CarePlan
Target: "http://hl7.org/fhir/workflow"
* -> "Request"
* identifier -> "Request.identifier"
* instantiatesCanonical -> "Request.instantiatesCanonical"
* instantiatesUri -> "Request.instantiatesUri"
* basedOn -> "Request.basedOn"
* replaces -> "Request.replaces"
* status -> "Request.status {uses different ValueSet}"
* intent -> "Request.intent"
* subject -> "Request.subject"
* encounter -> "Request.context"
* period -> "Request.occurrence[x]"
* created -> "Request.authoredOn"
* author -> "Request.requester"
* careTeam -> "Request.performer {similar but does not entail CareTeam}"
* addresses -> "Request.reasonReference"
* supportingInfo -> "Request.supportingInfo"
* activity -> "{no mapping\nNOTE: This is a list of contained Request-Event tuples!}"
* activity.outcomeReference -> "{Event that is outcome of Request in activity.reference}"
* activity.reference -> "{Request that resulted in Event in activity.actionResulting}"
* activity.detail.instantiatesCanonical -> "Request.instantiatesCanonical"
* activity.detail.instantiatesUri -> "Request.instantiatesUri"
* activity.detail.code -> "Request.code"
* activity.detail.reasonCode -> "Request.reasonCode"
* activity.detail.reasonReference -> "Request.reasonReference"
* activity.detail.status -> "Request.status"
* activity.detail.statusReason -> "Request.statusReason"
* activity.detail.doNotPerform -> "Request.doNotPerform"
* activity.detail.scheduled[x] -> "Request.occurrence[x]"
* activity.detail.performer -> "Request.performer"
* note -> "Request.note"