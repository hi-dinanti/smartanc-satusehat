Mapping: rim-for-Questionnaire
Id: rim
Title: "RIM Mapping"
Source: Questionnaire
Target: "http://hl7.org/v3"
* -> "Observation[moodCode=DEF]"
* url -> ".identifier[scope=BUSN;reliability=ISS]"
* identifier -> ".identifier"
* version -> "N/A (to add?)"
* name -> "N/A"
* title -> ".title"
* derivedFrom -> ".outboundRelationship[typeCode=DRIV].target[classCode=OBS, moodCode=DEFN]"
* status -> ".status"
* experimental -> "N/A"
* subjectType -> ".outboundRelationship[typeCode=META].target[classCode=OBS, moodCode=DEFN, isCriterion=true].participation.role.classCode"
* date -> ".participation[typeCode=AUT].time"
* publisher -> ".participation[typeCode=AUT].role"
* contact -> ".participation[typeCode=CALLBCK].role"
* description -> ".text"
* useContext -> "N/A (to add?)"
* jurisdiction -> "N/A (to add?)"
* purpose -> ".reasonCode.text"
* copyright -> "N/A (to add?)"
* approvalDate -> ".outboundRelationship[typeCode=\"SUBJ\"].act[classCode=CACT;moodCode=EVN;code=\"approval\"].effectiveTime"
* lastReviewDate -> ".outboundRelationship[typeCode=\"SUBJ\"; subsetCode=\"RECENT\"].act[classCode=CACT;moodCode=EVN;code=\"review\"].effectiveTime"
* effectivePeriod -> "N/A (to add?)"
* code -> ".code"
* item -> ".outboundRelationship[typeCode=COMP].target[classCode=OBS, moodCode=DEF]"
* item.linkId -> ".id"
* item.definition -> ".outboundRelationship[typeCode=INST].target[classCode=OBS, moodCode=DEF]"
* item.code -> ".code"
* item.prefix -> "Not supported"
* item.text -> ".text"
* item.type -> "N/A - MIF rather than RIM level"
* item.enableWhen -> "N/A - MIF rather than RIM level"
* item.enableWhen.question -> "N/A - MIF rather than RIM level"
* item.enableWhen.operator -> "N/A - MIF rather than RIM level"
* item.enableWhen.answer[x] -> "N/A - MIF rather than RIM level"
* item.enableBehavior -> "N/A - MIF rather than RIM level"
* item.required -> "N/A - MIF rather than RIM level"
* item.repeats -> "N/A - MIF rather than RIM level"
* item.readOnly -> "N/A - MIF rather than RIM level"
* item.maxLength -> "N/A - MIF rather than RIM level"
* item.answerValueSet -> "N/A - MIF rather than RIM level"
* item.answerOption -> "N/A - MIF rather than RIM level"
* item.answerOption.value[x] -> "N/A - MIF rather than RIM level"
* item.answerOption.initialSelected -> "N/A - MIF rather than RIM level"
* item.initial -> "N/A - MIF rather than RIM level"
* item.initial.value[x] -> "N/A - MIF rather than RIM level"
* item.item -> ".outboundRelationship[typeCode=COMP].target"