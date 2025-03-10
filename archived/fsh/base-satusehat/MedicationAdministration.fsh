Resource: MedicationAdministration
Id: MedicationAdministration
Description: "Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the authorizing prescription, and the specific encounter between patient and health care practitioner."
* ^meta.lastUpdated = "2019-10-31T22:29:23.356+00:00"
* ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Medications"
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #phx
* ^status = #draft
* ^date = "2023-05-12T03:54:04.8907436+00:00"
* ^publisher = "Health Level Seven International (Pharmacy)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication/index.cfm"
* . ^short = "Administration of medication to a patient"
* . ^definition = "Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the authorizing prescription, and the specific encounter between patient and health care practitioner."
* identifier undefined..undefined Identifier "External identifier" "Identifiers associated with this Medication Administration that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate. They are business identifiers assigned to this resource by the performer or other systems and remain constant as the resource is updated and propagates from server to server."
* identifier ^comment = "This is a business identifier, not a resource identifier."
* instantiates undefined..undefined SU uri "Instantiates protocol or definition" "A protocol, guideline, orderset, or other definition that was adhered to in whole or in part by this event."
* partOf undefined..undefined SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/MedicationAdministration or https://fhir.kemkes.go.id/r4/StructureDefinition/Procedure) "Part of referenced event" "A larger event of which this particular event is a component or step."
* status 1..1 ?! SU code "in-progress | not-done | on-hold | completed | entered-in-error | stopped | unknown" "Will generally be set to show that the administration has been completed.  For some long running administrations such as infusions, it is possible for an administration to be started but not completed or it may be paused while some other process is under way."
* status from http://hl7.org/fhir/ValueSet/medication-admin-status|4.0.1 (required)
* status ^comment = "This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid."
* status ^isModifierReason = "This element is labelled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid"
* status ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension.valueString = "MedicationAdministrationStatus"
* status ^binding.description = "A set of codes indicating the current status of a MedicationAdministration."
* statusReason undefined..undefined CodeableConcept "Reason administration not performed" "A code indicating why the administration was not performed."
* statusReason from http://hl7.org/fhir/ValueSet/reason-medication-not-given-codes (example)
* statusReason ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* statusReason ^binding.extension.valueString = "MedicationAdministrationNegationReason"
* statusReason ^binding.description = "A set of codes indicating the reason why the MedicationAdministration is negated."
* category undefined..1 CodeableConcept "Type of medication usage" "Indicates where the medication is expected to be consumed or administered."
* category from http://hl7.org/fhir/ValueSet/medication-admin-category (preferred)
* category ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* category ^binding.extension.valueString = "MedicationAdministrationCategory"
* category ^binding.description = "A coded concept describing where the medication administered is expected to occur."
* medication[x] 1..1 SU CodeableConcept or Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Medication) "What was administered" "Identifies the medication that was administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code that identifies the medication from a known list of medications."
* medication[x] from http://hl7.org/fhir/ValueSet/medication-codes (example)
* medication[x] ^comment = "If only a code is specified, then it needs to be a code for a specific product. If more information is required, then the use of the medication resource is recommended.  For example, if you require form or lot number, then you must reference the Medication resource."
* medication[x] ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* medication[x] ^binding.extension.valueString = "MedicationCode"
* medication[x] ^binding.description = "Codes identifying substance or product that can be administered."
* subject 1..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Patient or https://fhir.kemkes.go.id/r4/StructureDefinition/Group) "Who received medication" "The person or animal or group receiving the medication."
* context undefined..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Encounter or https://fhir.kemkes.go.id/r4/StructureDefinition/EpisodeOfCare) "Encounter or Episode of Care administered as part of" "The visit, admission, or other contact between patient and health care provider during which the medication administration was performed."
* supportingInformation undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Resource) "Additional information to support administration" "Additional information (for example, patient height and weight) that supports the administration of the medication."
* effective[x] 1..1 SU dateTime or Period "Start and end time of administration" "A specific date/time or interval of time during which the administration took place (or did not take place, when the 'notGiven' attribute is true). For many administrations, such as swallowing a tablet the use of dateTime is more appropriate."
* performer undefined..undefined SU BackboneElement "Who performed the medication administration and what they did" "Indicates who or what performed the medication administration and how they were involved."
* performer.function undefined..1 CodeableConcept "Type of performance" "Distinguishes the type of involvement of the performer in the medication administration."
* performer.function from http://hl7.org/fhir/ValueSet/med-admin-perform-function (example)
* performer.function ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* performer.function ^binding.extension.valueString = "MedicationAdministrationPerformerFunction"
* performer.function ^binding.description = "A code describing the role an individual played in administering the medication."
* performer.actor 1..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Practitioner or https://fhir.kemkes.go.id/r4/StructureDefinition/PractitionerRole or https://fhir.kemkes.go.id/r4/StructureDefinition/Patient or https://fhir.kemkes.go.id/r4/StructureDefinition/RelatedPerson or https://fhir.kemkes.go.id/r4/StructureDefinition/Device) "Who performed the medication administration" "Indicates who or what performed the medication administration."
* reasonCode undefined..undefined CodeableConcept "Reason administration performed" "A code indicating why the medication was given."
* reasonCode from http://hl7.org/fhir/ValueSet/reason-medication-given-codes (example)
* reasonCode ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* reasonCode ^binding.extension.valueString = "MedicationAdministrationReason"
* reasonCode ^binding.description = "A set of codes indicating the reason why the MedicationAdministration was made."
* reasonReference undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Condition or https://fhir.kemkes.go.id/r4/StructureDefinition/Observation or https://fhir.kemkes.go.id/r4/StructureDefinition/DiagnosticReport) "Condition or observation that supports why the medication was administered" "Condition or observation that supports why the medication was administered."
* reasonReference ^comment = "This is a reference to a condition that is the reason for the medication request.  If only a code exists, use reasonCode."
* request undefined..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/MedicationRequest) "Request administration performed against" "The original request, instruction or authority to perform the administration."
* request ^comment = "This is a reference to the MedicationRequest  where the intent is either order or instance-order.  It should not reference MedicationRequests where the intent is any other value."
* device undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Device) "Device used to administer" "The device used in administering the medication to the patient.  For example, a particular infusion pump."
* note undefined..undefined Annotation "Information about the administration" "Extra information about the medication administration that is not conveyed by the other attributes."
* dosage undefined..1 BackboneElement "Details of how medication was taken" "Describes the medication dosage information details e.g. dose, rate, site, route, etc."
* dosage obeys mad-1
* dosage.text undefined..1 string "Free text dosage instructions e.g. SIG" "Free text dosage can be used for cases where the dosage administered is too complex to code. When coded dosage is present, the free text dosage may still be present for display to humans.\r\rThe dosage instructions should reflect the dosage of the medication that was administered."
* dosage.site undefined..1 CodeableConcept "Body site administered to" "A coded specification of the anatomic site where the medication first entered the body.  For example, \"left arm\"."
* dosage.site from http://hl7.org/fhir/ValueSet/approach-site-codes (example)
* dosage.site ^comment = "If the use case requires attributes from the BodySite resource (e.g. to identify and track separately) then use the standard extension [bodySite](extension-bodysite.html).  May be a summary code, or a reference to a very precise definition of the location, or both."
* dosage.site ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* dosage.site ^binding.extension.valueString = "MedicationAdministrationSite"
* dosage.site ^binding.description = "A coded concept describing the site location the medicine enters into or onto the body."
* dosage.route undefined..1 CodeableConcept "Path of substance into body" "A code specifying the route or physiological path of administration of a therapeutic agent into or onto the patient.  For example, topical, intravenous, etc."
* dosage.route from http://hl7.org/fhir/ValueSet/route-codes (example)
* dosage.route ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* dosage.route ^binding.extension.valueString = "RouteOfAdministration"
* dosage.route ^binding.description = "A coded concept describing the route or physiological path of administration of a therapeutic agent into or onto the body of a subject."
* dosage.method undefined..1 CodeableConcept "How drug was administered" "A coded value indicating the method by which the medication is intended to be or was introduced into or on the body.  This attribute will most often NOT be populated.  It is most commonly used for injections.  For example, Slow Push, Deep IV."
* dosage.method from http://hl7.org/fhir/ValueSet/administration-method-codes (example)
* dosage.method ^comment = "One of the reasons this attribute is not used often, is that the method is often pre-coordinated with the route and/or form of administration.  This means the codes used in route or form may pre-coordinate the method in the route code or the form code.  The implementation decision about what coding system to use for route or form code will determine how frequently the method code will be populated e.g. if route or form code pre-coordinate method code, then this attribute will not be populated often; if there is no pre-coordination then method code may  be used frequently."
* dosage.method ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* dosage.method ^binding.extension.valueString = "MedicationAdministrationMethod"
* dosage.method ^binding.description = "A coded concept describing the technique by which the medicine is administered."
* dosage.dose undefined..1 https://fhir.kemkes.go.id/r4/StructureDefinition/SimpleQuantity "Amount of medication per dose" "The amount of the medication given at one administration event.   Use this value when the administration is essentially an instantaneous event such as a swallowing a tablet or giving an injection."
* dosage.dose ^comment = "If the administration is not instantaneous (rate is present), this can be specified to convey the total amount administered over period of time of a single administration."
* dosage.rate[x] undefined..1 Ratio or https://fhir.kemkes.go.id/r4/StructureDefinition/SimpleQuantity "Dose quantity per unit of time" "Identifies the speed with which the medication was or will be introduced into the patient.  Typically, the rate for an infusion e.g. 100 ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per unit of time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200 mcg/1 minute; 1 liter/8 hours."
* dosage.rate[x] ^comment = "If the rate changes over time, and you want to capture this in MedicationAdministration, then each change should be captured as a distinct MedicationAdministration, with a specific MedicationAdministration.dosage.rate, and the date time when the rate change occurred. Typically, the MedicationAdministration.dosage.rate element is not used to convey an average rate."
* eventHistory undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Provenance) "A list of events of interest in the lifecycle" "A summary of the events of interest that have occurred, such as when the administration was verified."
* eventHistory ^comment = "This might not include provenances for all versions of the request – only those deemed “relevant” or important. This SHALL NOT include the Provenance associated with this current version of the resource. (If that provenance is deemed to be a “relevant” change, it will need to be added as part of a later update. Until then, it can be queried directly as the Provenance that points to this version using _revinclude All Provenances should have some historical version of this Request as their subject."