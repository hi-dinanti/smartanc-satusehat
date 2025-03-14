Mapping: rim-for-HealthcareService
Id: rim
Title: "RIM Mapping"
Source: HealthcareService
Target: "http://hl7.org/v3"
* -> "act[classCode=ACT][moodCode=DEF]"
* identifier -> ".id"
* active -> ".statusCode"
* providedBy -> ".scopingRole.Organization"
* category -> ".code"
* type -> ".actrelationship[typeCode=COMP.act[classCode=ACT][moodCode=DEF].code"
* specialty -> ".actrelationship[typeCode=COMP.act[classCode=ACT][moodCode=DEF].code"
* location -> ".location.role[classCode=SDLOC]"
* name -> ".name"
* comment -> ".location.role[classCode=SDLOC].desc"
* extraDetails -> ".actrelationship[typeCode=COMP.act[classCode=ACT][moodCode=DEF].text"
* photo -> ".actrelationship[typeCode=SBJ].observation.value"
* telecom -> ".telecom"
* coverageArea -> ".location.role[classCode=SDLOC].subjectOf.A_SpatialCoordinate"
* serviceProvisionCode -> ".actrelationship[typeCode=PRCN].observation[moodCode=EVN.CRT]"
* eligibility.code -> ".actrelationship[typeCode=PRCN].observation[moodCode=EVN.CRT]"
* eligibility.comment -> ".actrelationship[typeCode=PRCN].observation[moodCode=EVN.CRT].text"
* program -> ".actrelationship[typeCode=PERT].observation"
* characteristic -> ".actrelationship[typeCode=PERT].observation"
* referralMethod -> ".actrelationship[typeCode=PERT].observation"
* appointmentRequired -> ".actrelationship[typeCode=PERT].observation"
* availableTime -> ".effectiveTime"
* availableTime.daysOfWeek -> ".effectiveTime"
* availableTime.allDay -> ".effectiveTime"
* availableTime.availableStartTime -> ".effectiveTime"
* availableTime.availableEndTime -> ".effectiveTime"
* notAvailable -> ".effectiveTime"
* notAvailable.during -> ".effectiveTime"
* availabilityExceptions -> ".effectiveTime"