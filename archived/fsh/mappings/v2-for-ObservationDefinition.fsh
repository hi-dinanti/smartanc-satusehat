Mapping: v2-for-ObservationDefinition
Id: v2
Title: "HL7 v2 Mapping"
Source: ObservationDefinition
Target: "http://hl7.org/v2"
* -> "OM2\nOM3\nOMC"
* code -> "OM1-2\nOMC-4"
* permittedDataType -> "OM1-3"
* method -> "OM1-14"
* preferredReportName -> "OM1-9"
* quantitativeDetails -> "OM2"
* quantitativeDetails.customaryUnit -> "OM2-2"
* quantitativeDetails.unit -> "OM2-4"
* quantitativeDetails.conversionFactor -> "OM2-5"
* quantitativeDetails.decimalPrecision -> "OM2-3"
* qualifiedInterval -> "OM2-6"
* qualifiedInterval.category -> "OM-2"
* qualifiedInterval.range -> "OM-2"
* qualifiedInterval.context -> "n.a."
* qualifiedInterval.appliesTo -> "RFR.6"
* qualifiedInterval.gender -> "RFR.2"
* qualifiedInterval.age -> "RFR.3"
* qualifiedInterval.gestationalAge -> "RFR.4"
* qualifiedInterval.condition -> "RFR.7"
* validCodedValueSet -> "OM3-3"
* normalCodedValueSet -> "OM3-4"
* abnormalCodedValueSet -> "OM3-5"
* criticalCodedValueSet -> "OM3-6"