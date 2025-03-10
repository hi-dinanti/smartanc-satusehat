Mapping: rim-for-QuestionnaireResponse
Id: rim
Title: "RIM Mapping"
Source: QuestionnaireResponse
Target: "http://hl7.org/v3"
* -> "Observation[moodCode=EVN]"
* identifier -> ".id"
* basedOn -> ".outboundRelationship[typeCode=FLFS].target"
* partOf -> ".inboundRelationship[typeCode=COMP].source[moodCode=EVN]"
* questionnaire -> "./outboundRelationship[typeCode=INST]/target[classCode=OBS, moodCode=DEFN]"
* status -> ".statusCode (also whether there's a revisionControlAct - and possibly mood to distinguish \"in-progress\" from \"published)"
* subject -> ".participation[typeCode=SBJ].role"
* encounter -> ".inboundRelationship(typeCode=COMP].source[classCode<=PCPR, moodCode=EVN]"
* authored -> ".participation[typeCode=AUT].time"
* author -> ".participation[typeCode=AUT].role"
* source -> ".participation[typeCode=INF].role"
* item -> ".outboundRelationship[typeCode=COMP].target[classCode=OBS, moodCode=EVN]"
* item.linkId -> ".outboundRelationship[typeCode=DEFN].target[classCode=OBS, moodCode=DEFN].id"
* item.definition -> ".outboundRelationship[typeCode=DEFN].target[classCode=OBS, moodCode=DEFN].code"
* item.text -> ".text"
* item.answer -> ".value[type=LIST_ANY]"
* item.answer.value[x] -> ".item"
* item.answer.item -> ".outboundRelationship[typeCode=COMP].target[classCode=OBS, moodCode=EVN]"
* item.item -> ".outboundRelationship[typeCode=COMP].target[classCode=OBS, moodCode=EVN]"