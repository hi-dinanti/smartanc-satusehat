Mapping: rim-for-Invoice
Id: rim
Title: "RIM Mapping"
Source: Invoice
Target: "http://hl7.org/v3"
* -> "Act[moodCode=EVN]"
* identifier -> ".identifier"
* status -> ".status"
* type -> ".code"
* subject -> ".participation[typeCode=SBJ].role"
* recipient -> ".inboundRelationship(typeCode=COMP].source[classCode<=PCPR, moodCode=EVN]"
* date -> ".effectiveTime"
* participant -> ".participation[typeCode=PRF].role[scoper.determinerCode=INSTANCE]"
* participant.role -> ".participation.functionCode"
* participant.actor -> ".player"
* issuer -> ".scoper"
* lineItem -> ".participation[typeCode=PRF].role[scoper.determinerCode=INSTANCE]"
* lineItem.chargeItem[x] -> ".player"
* lineItem.priceComponent -> ".participation[typeCode=PRF].role[scoper.determinerCode=INSTANCE]"
* lineItem.priceComponent.type -> ".code"
* lineItem.priceComponent.code -> ".code"
* totalPriceComponent -> ".participation[typeCode=PRF].role[scoper.determinerCode=INSTANCE]"
* note -> ".inboundRelationship(typeCode=SUBJ].source[classCode=ANNGEN, moodCode=EVN].value[xsi:type=ST]"