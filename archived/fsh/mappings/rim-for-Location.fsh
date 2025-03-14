Mapping: rim-for-Location
Id: rim
Title: "RIM Mapping"
Source: Location
Target: "http://hl7.org/v3"
* -> ".Role[classCode=SDLC]"
* identifier -> ".id"
* status -> ".statusCode"
* name -> ".name"
* alias -> ".name"
* description -> ".playingEntity[classCode=PLC determinerCode=INSTANCE].desc"
* mode -> ".playingEntity[classCode=PLC].determinerCode"
* type -> ".code"
* telecom -> ".telecom"
* address -> ".addr"
* physicalType -> ".playingEntity [classCode=PLC].code"
* position -> ".playingEntity [classCode=PLC determinerCode=INSTANCE].positionText"
* position.longitude -> "(RIM Opted not to map the sub-elements of GPS location, is now an OBS)"
* position.latitude -> "(RIM Opted not to map the sub-elements of GPS location, is now an OBS)"
* position.altitude -> "(RIM Opted not to map the sub-elements of GPS location, is now an OBS)"
* managingOrganization -> ".scopingEntity[classCode=ORG determinerKind=INSTANCE]"
* partOf -> ".inboundLink[typeCode=PART].source[classCode=SDLC]"
* hoursOfOperation -> ".effectiveTime"
* hoursOfOperation.daysOfWeek -> ".effectiveTime"
* hoursOfOperation.allDay -> ".effectiveTime"
* hoursOfOperation.openingTime -> ".effectiveTime"
* hoursOfOperation.closingTime -> ".effectiveTime"