Instance: cra-pat-min
InstanceOf: PatientCRA
Title: "育兒津貼受補助兒童範例"
Description: "符合個案資訊-Patient CRA Profile 的受補助兒童範例。"
Usage: #example

* meta.profile[+] = "https://sfaa.gov.tw/cra/StructureDefinition/Patient-cra|0.0.1"
* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A123456789"
* identifier[caseNumber][0].use = #usual
* identifier[caseNumber][0].system = "https://example.org/cra/case-number"
* identifier[caseNumber][0].value = "CRA-115-000001"
* name[usual].use = #usual
* name[usual].text = "王小明"
* birthDate = "2025-01-15"
* address[0].city = "南港區"

Instance: cra-related-person-min
InstanceOf: RelatedPersonCRA
Title: "育兒津貼關係人範例"
Description: "符合育兒津貼關係人-RelatedPerson CRA Profile 的關係人範例。"
Usage: #example

* meta.profile[+] = "https://sfaa.gov.tw/cra/StructureDefinition/RelatedPerson-cra|0.0.1"
* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].value = "B223456789"
* identifier[relationNumber].use = #usual
* identifier[relationNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[relationNumber].type.coding.code = #RI
* identifier[relationNumber].value = "CRA-RP-000001"
* active = true
* patient = Reference(cra-pat-min)
* relationship.text = "母親"
* name.text = "王小美"

Instance: cra-insurer-min
InstanceOf: OrganizationTWSSBase
Title: "育兒津貼給付單位範例"
Description: "育兒津貼資格交換範例中的給付單位。"
Usage: #example

* meta.profile[+] = "https://sfaa.gov.tw/base/StructureDefinition/Organization-twss-base|0.0.1"
* identifier[organizationCode].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[organizationCode].type.coding.code = #PRN
* identifier[organizationCode].system = "https://example.org/cra/organization-code"
* identifier[organizationCode].value = "SFAA-CRA"
* active = true
* name = "衛生福利部社會及家庭署"

Instance: cra-coverage-min
InstanceOf: CoverageCRA
Title: "育兒津貼資格範例"
Description: "符合育兒津貼資格-Coverage CRA Profile 的補助資格範例。"
Usage: #example

* meta.profile[+] = "https://sfaa.gov.tw/cra/StructureDefinition/Coverage-cra|0.0.1"
* status = #active
* type.text = "未滿兩歲兒童育兒津貼"
* beneficiary = Reference(cra-pat-min)
* payor[0] = Reference(cra-insurer-min)
* period.start = "2026-11"
* period.end = "2027-01"

Instance: cra-claim-min
InstanceOf: ClaimCRA
Title: "育兒津貼申請範例"
Description: "符合育兒津貼申請-Claim CRA Profile 的育兒津貼申請範例。"
Usage: #example

* meta.profile[+] = "https://sfaa.gov.tw/cra/StructureDefinition/Claim-cra|0.0.1"
* identifier[0].system = "https://example.org/cra/application-number"
* identifier[0].value = "CRA-115-000001"
* status = #active
* type.text = "育兒津貼申請"
* use = #claim
* patient = Reference(cra-pat-min)
* created = "2026-10-15"
* insurer = Reference(cra-insurer-min)
* provider = Reference(cra-insurer-min)
* priority.text = "一般"
* supportingInfo[applicant].sequence = 1
* supportingInfo[applicant].category.coding = TWSSClaimSupportingInfoType#applicant "申請人"
* supportingInfo[applicant].valueReference = Reference(cra-related-person-min)
* supportingInfo[parity].sequence = 2
* supportingInfo[parity].category.coding = TWSSClaimSupportingInfoType#parity "胎次"
* supportingInfo[parity].valueString = "2"
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(cra-coverage-min)
* item[0].sequence = 1
* item[0].productOrService = TWSSSubsidyServiceType#CRA "未滿2歲兒童育兒津貼資訊系統"

Instance: cra-claimresponse-min
InstanceOf: ClaimResponseCRA
Title: "育兒津貼核定資格範例"
Description: "符合育兒津貼核定資格-ClaimResponse CRA Profile 的已核定補助資格範例。"
Usage: #example

* meta.profile[+] = "https://sfaa.gov.tw/cra/StructureDefinition/ClaimResponse-cra|0.0.1"
* status = #active
* type.text = "育兒津貼核定結果"
* use = #claim
* patient = Reference(cra-pat-min)
* created = "2026-10-16"
* insurer = Reference(cra-insurer-min)
* requestor = Reference(cra-insurer-min)
* request = Reference(cra-claim-min)
* outcome = #complete
* disposition = "核定通過"
* extension[subsidyPeriod].extension[start].valueDate = "2026-11"
* extension[subsidyPeriod].extension[end].valueDate = "2027-01"
* item[0].itemSequence = 1
* item[0].adjudication[approvedBenefit].category = http://terminology.hl7.org/CodeSystem/adjudication#benefit "Benefit Amount"
* item[0].adjudication[approvedBenefit].reason = TWSSSubsidyApprovalDecision#approved "通過"
* item[0].adjudication[approvedBenefit].amount.value = 5000
* item[0].adjudication[approvedBenefit].amount.currency = #TWD
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(cra-coverage-min)

Instance: cra-eligibility-bundle-min
InstanceOf: CRAEligibilityBundle
Title: "育兒津貼資格交換範例"
Description: "每日提供托育服務整合資訊系統之已核定育兒津貼資格交換範例。"
Usage: #example

* timestamp = "2026-10-16T08:00:00+08:00"
* entry[patient].fullUrl = "https://example.org/fhir/Patient/cra-pat-min"
* entry[patient].resource = cra-pat-min
* entry[relatedPerson][0].fullUrl = "https://example.org/fhir/RelatedPerson/cra-related-person-min"
* entry[relatedPerson][0].resource = cra-related-person-min
* entry[insurer].fullUrl = "https://example.org/fhir/Organization/cra-insurer-min"
* entry[insurer].resource = cra-insurer-min
* entry[coverage].fullUrl = "https://example.org/fhir/Coverage/cra-coverage-min"
* entry[coverage].resource = cra-coverage-min
* entry[claim].fullUrl = "https://example.org/fhir/Claim/cra-claim-min"
* entry[claim].resource = cra-claim-min
* entry[claimResponse].fullUrl = "https://example.org/fhir/ClaimResponse/cra-claimresponse-min"
* entry[claimResponse].resource = cra-claimresponse-min
