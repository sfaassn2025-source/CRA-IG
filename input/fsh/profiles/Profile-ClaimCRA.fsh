Profile: ClaimCRA
Parent: ClaimTWSSBase
Id: Claim-cra
Title: "育兒津貼申請-Claim CRA"
Description: "此 Profile 繼承補助申請或核付明細-Claim TWSS Base Profile，表達未滿兩歲兒童育兒津貼的申請資料。"

* patient only Reference(PatientCRA)
* use = #claim
* use ^short = "申請用途；固定為正式補助申請。"
* type = https://sfaa.gov.tw/base/CodeSystem/twss-claim-type#social-welfare-subsidy "社會福利補助申請"
* type ^short = "補助申請類型；固定為社會福利補助申請，具體補助項目另見 item.productOrService。"
* insurance.coverage only Reference(CoverageCRA)
* insurer 1..1
* insurer only Reference(OrganizationTWSSBase)
* insurer ^short = "育兒津貼給付單位（衛生福利部社會及家庭署）"
* provider only Reference(OrganizationTWSSBase)
* provider ^short = "補助申請承辦或提供單位（衛生福利部社會及家庭署）"
* provider ^definition = "Claim 原生必填欄位；本交換固定參照衛生福利部社會及家庭署的 Organization，由來源系統預先配置，不對應最新版欄位表的業務欄位。"
* identifier ^short = "申請案號"
* created ^short = "申請日期"
// Base 共用 slice 中未用於育兒津貼申請者，不納入本 Profile。
* supportingInfo[serviceCase] 0..0
* supportingInfo[documentsComplete] 0..0
* supportingInfo[applicationChannel] 0..0
* supportingInfo[bankAccount] 0..0
* supportingInfo[applicant] 0..2 MS
* supportingInfo[applicant].value[x] only Reference(RelatedPersonCRA)
* supportingInfo[applicant] ^short = "申請人"
* supportingInfo[applicant] ^definition = "育兒津貼申請人；最多可填寫二位，分別表達申請人1與申請人2。"
* supportingInfo contains parity 0..1 MS
* supportingInfo[parity].category.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-claim-supporting-info-type"
* supportingInfo[parity].category.coding.code = #parity
* supportingInfo[parity].category.coding.display = "胎次"
* supportingInfo[parity].value[x] only string
* supportingInfo[parity] ^short = "胎次"
* supportingInfo[parity] ^definition = "申請育兒津貼時填寫的子女胎次。"
* item 1..1 MS
* item.productOrService = TWSSSubsidyServiceType#CRA
* item.productOrService ^short = "申請補助別；固定為未滿兩歲兒童育兒津貼資訊系統。"
