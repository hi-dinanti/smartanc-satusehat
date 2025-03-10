Resource: ClinicalImpression
Id: ClinicalImpression
Description: "A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning the treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1 with a clinical consultation / encounter,  but this varies greatly depending on the clinical workflow. This resource is called \"ClinicalImpression\" rather than \"ClinicalAssessment\" to avoid confusion with the recording of assessment tools such as Apgar score."
* ^meta.lastUpdated = "2022-11-15T10:06:59.0070182+00:00"
* ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Summary"
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^date = "2023-05-12T03:54:04.8907436+00:00"
* ^publisher = "Health Level Seven International (Patient Care)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/patientcare/index.cfm"
* . ^short = "A clinical assessment performed when planning treatments and management strategies for a patient"
* . ^definition = "A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning the treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1 with a clinical consultation / encounter,  but this varies greatly depending on the clinical workflow. This resource is called \"ClinicalImpression\" rather than \"ClinicalAssessment\" to avoid confusion with the recording of assessment tools such as Apgar score."
* identifier undefined..undefined SU Identifier "Business identifier" "Business identifiers assigned to this clinical impression by the performer or other systems which remain constant as the resource is updated and propagates from server to server."
* identifier ^comment = "This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number."
* identifier ^requirements = "Allows identification of the clinical impression as it is known by various participating systems and in a way that remains consistent across servers."
* status 1..1 ?! SU code "in-progress | completed | entered-in-error" "Identifies the workflow status of the assessment."
* status from http://hl7.org/fhir/ValueSet/clinicalimpression-status|4.0.1 (required)
* status ^comment = "This element is labeled as a modifier because the status contains the code entered-in-error that marks the clinical impression as not currently valid."
* status ^isModifierReason = "This element is labelled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid"
* status ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension.valueString = "ClinicalImpressionStatus"
* status ^binding.description = "The workflow state of a clinical impression."
* statusReason undefined..1 CodeableConcept "Reason for current status" "Captures the reason for the current state of the ClinicalImpression."
* statusReason ^comment = "This is generally only used for \"exception\" statuses such as \"not-done\", \"suspended\" or \"cancelled\".\n\n[distinct reason codes for different statuses can be enforced using invariants if they are universal bindings]."
* statusReason ^alias[0] = "Suspended Reason"
* statusReason ^alias[+] = "Cancelled Reason"
* statusReason ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* statusReason ^binding.extension.valueString = "ClinicalImpressionStatusReason"
* statusReason ^binding.strength = #example
* statusReason ^binding.description = "Codes identifying the reason for the current state of a clinical impression."
* code undefined..1 SU CodeableConcept "Kind of assessment performed" "Categorizes the type of clinical assessment performed."
* code ^comment = "This is present as a place-holder only and may be removed based on feedback/work group opinion."
* code ^alias[0] = "type"
* code ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ClinicalImpressionCode"
* code ^binding.strength = #example
* code ^binding.description = "Identifies categories of clinical impressions.  This is a place-holder only.  It may be removed."
* description undefined..1 SU string "Why/how the assessment was performed" "A summary of the context and/or cause of the assessment - why / where it was performed, and what patient events/status prompted it."
* subject 1..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Patient or https://fhir.kemkes.go.id/r4/StructureDefinition/Group) "Patient or group assessed" "The patient or group of individuals assessed as part of this record."
* subject ^requirements = "Group is typically for veterinary and/or public health purposes."
* encounter 1..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Encounter) "Encounter created as part of" "The Encounter during which this ClinicalImpression was created or to which the creation of this record is tightly associated."
* encounter ^comment = "This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter."
* effective[x] undefined..1 SU dateTime or Period "Time of assessment" "The point in time or period over which the subject was assessed."
* effective[x] ^comment = "This SHOULD be accurate to at least the minute, though some assessments only have a known date."
* date undefined..1 SU dateTime "When the assessment was documented" "Indicates when the documentation of the assessment was complete."
* assessor undefined..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Practitioner or https://fhir.kemkes.go.id/r4/StructureDefinition/PractitionerRole) "The clinician performing the assessment" "The clinician performing the assessment."
* previous undefined..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/ClinicalImpression) "Reference to last assessment" "A reference to the last assessment that was conducted on this patient. Assessments are often/usually ongoing in nature; a care provider (practitioner or team) will make new assessments on an ongoing basis as new data arises or the patient's conditions changes."
* previous ^comment = "It is always likely that multiple previous assessments exist for a patient. The point of quoting a previous assessment is that this assessment is relative to it (see resolved)."
* problem undefined..undefined SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Condition or https://fhir.kemkes.go.id/r4/StructureDefinition/AllergyIntolerance) "Relevant impressions of patient state" "A list of the relevant problems/conditions for a patient."
* problem ^comment = "e.g. The patient is a pregnant, has congestive heart failure, has an ‎Adenocarcinoma, and is allergic to penicillin."
* investigation undefined..undefined BackboneElement "One or more sets of investigations (signs, symptoms, etc.)" "One or more sets of investigations (signs, symptoms, etc.). The actual grouping of investigations varies greatly depending on the type and context of the assessment. These investigations may include data generated during the assessment process, or data previously generated and recorded that is pertinent to the outcomes."
* investigation.code 1..1 CodeableConcept "A name/code for the set" "A name/code for the group (\"set\") of investigations. Typically, this will be something like \"signs\", \"symptoms\", \"clinical\", \"diagnostic\", but the list is not constrained, and others such groups such as (exposure|family|travel|nutritional) history may be used."
* investigation.code from http://hl7.org/fhir/ValueSet/investigation-sets (example)
* investigation.code ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* investigation.code ^binding.extension.valueString = "InvestigationGroupType"
* investigation.code ^binding.description = "A name/code for a set of investigations."
* investigation.item undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Observation or https://fhir.kemkes.go.id/r4/StructureDefinition/QuestionnaireResponse or https://fhir.kemkes.go.id/r4/StructureDefinition/FamilyMemberHistory or https://fhir.kemkes.go.id/r4/StructureDefinition/DiagnosticReport or https://fhir.kemkes.go.id/r4/StructureDefinition/RiskAssessment or https://fhir.kemkes.go.id/r4/StructureDefinition/ImagingStudy or https://fhir.kemkes.go.id/r4/StructureDefinition/Media) "Record of a specific investigation" "A record of a specific investigation that was undertaken."
* investigation.item ^comment = "Most investigations are observations of one kind or another but some other specific types of data collection resources can also be used."
* protocol undefined..undefined uri "Clinical Protocol followed" "Reference to a specific published clinical protocol that was followed during this assessment, and/or that provides evidence in support of the diagnosis."
* summary undefined..1 string "Summary of the assessment" "A text summary of the investigations and the diagnosis."
* finding undefined..undefined BackboneElement "Possible or likely findings and diagnoses" "Specific findings or diagnoses that were considered likely or relevant to ongoing treatment."
* finding.itemCodeableConcept undefined..1 CodeableConcept "What was found" "Specific text or code for finding or diagnosis, which may include ruled-out or resolved conditions."
* finding.itemCodeableConcept from http://hl7.org/fhir/ValueSet/condition-code (example)
* finding.itemCodeableConcept ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* finding.itemCodeableConcept ^binding.extension.valueString = "ConditionKind"
* finding.itemCodeableConcept ^binding.description = "Identification of the Condition or diagnosis."
* finding.itemReference undefined..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Condition or https://fhir.kemkes.go.id/r4/StructureDefinition/Observation or https://fhir.kemkes.go.id/r4/StructureDefinition/Media) "What was found" "Specific reference for finding or diagnosis, which may include ruled-out or resolved conditions."
* finding.basis undefined..1 string "Which investigations support finding" "Which investigations support finding or diagnosis."
* prognosisCodeableConcept 1..undefined CodeableConcept "Estimate of likely outcome" "Estimate of likely outcome."
* prognosisCodeableConcept from http://hl7.org/fhir/ValueSet/clinicalimpression-prognosis (example)
* prognosisCodeableConcept ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* prognosisCodeableConcept ^binding.extension.valueString = "ClinicalImpressionPrognosis"
* prognosisCodeableConcept ^binding.description = "Prognosis or outlook findings."
* prognosisReference undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/RiskAssessment) "RiskAssessment expressing likely outcome" "RiskAssessment expressing likely outcome."
* supportingInfo undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Resource) "Information supporting the clinical impression" "Information supporting the clinical impression."
* note undefined..undefined Annotation "Comments made about the ClinicalImpression" "Commentary about the impression, typically recorded after the impression itself was made, though supplemental notes by the original author could also appear."
* note ^comment = "Don't use this element for content that should more properly appear as one of the specific elements of the impression."