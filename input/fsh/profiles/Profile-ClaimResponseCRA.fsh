Profile: ClaimResponseCRA
Parent: ClaimResponseTWSSBase
Id: ClaimResponse-cra
Title: "育兒津貼核定資格-ClaimResponse CRA"
Description: "此 Profile 繼承補助審核或核付結果-ClaimResponse TWSS Base Profile，表達已核定且供托育服務整合資訊系統進行資格比對的育兒津貼資格。"

* patient only Reference(PatientCRA)
* request only Reference(ClaimCRA)
* insurance.coverage only Reference(CoverageCRA)
* insurer 1..1
* insurer only Reference(OrganizationTWSSBase)
* insurer ^short = "育兒津貼給付單位（衛生福利部社會及家庭署）"
* status = #active
* outcome = #complete
* created ^short = "審核/查核日期"
* extension[subsidyPeriod] ^short = "補助期間"
* extension[subsidyPeriod].extension[start].valueDate ^short = "補助起始年月"
* extension[subsidyPeriod].extension[end].valueDate ^short = "補助結束年月"
* item 1..1 MS
* item.adjudication[approvedBenefit] 1..1 MS
* item.adjudication[approvedBenefit].reason = TWSSSubsidyApprovalDecision#approved
* item.adjudication[approvedBenefit].amount ^short = "核定補助金額"
