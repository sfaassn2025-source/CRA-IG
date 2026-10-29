Logical: CRADataModel
Id: CRADataModel
Title: "未滿兩歲育兒津貼資格交換資料模型"
Description: """
本邏輯模型定義未滿兩歲育兒津貼資訊系統每日提供目前有效育兒津貼資格資料予托育服務整合資訊系統時，所交換的資料欄位。
本資料模型僅涵蓋育兒津貼與托育資格比對情境，不涵蓋脆弱家庭或其他跨系統流程。
"""

* child 1..1 BackboneElement "受補助兒童"
* child.idCardNumber 1..1 Identifier "受補助人身分證號"
* child.name 0..1 HumanName "受補助人姓名"
* child.birthday 0..1 date "受補助人生日"
* child.district 0..1 string "縣市" 

* subsidyApplication 0..1 BackboneElement "育兒津貼申請"
* subsidyApplication.applicationNumber 0..1 Identifier "申請案號" "申請育兒津貼的案件編號；申請通過後沿用至結案。"
* subsidyApplication.applicationDate 0..1 date "申請日期"
* subsidyApplication.applicant 0..2 BackboneElement "申請人" "最多可填寫二位，分別表達申請人1與申請人2。"
* subsidyApplication.applicant.applicantIdCardNumber 0..1 Identifier "申請人身分證字號"
* subsidyApplication.applicant.applicantName 0..1 HumanName "申請人姓名"
* subsidyApplication.parity 0..1 string "胎次" "申請育兒津貼時填寫的子女胎次；以字串保存來源系統的填報值。"

* subsidyProvision 0..1 BackboneElement "已核定育兒津貼資格"
* subsidyProvision.reviewCheckDate 0..1 date "審核/查核日期"
* subsidyProvision.subsidyStartYearMonth 0..1 date "補助起始年月"
* subsidyProvision.subsidyEndYearMonth 0..1 date "補助結束年月"
* subsidyProvision.approvedSubsidyAmount 0..1 decimal "核定補助金額"

* subsidyProvision.suspensionApprovalYearMonth 0..1 date "核停年月" "核停當月起停止領取育兒津貼；使用 YYYY-MM 精度。"

Mapping: CRADataModelToPatient
Source: CRADataModel
Target: "https://sfaa.gov.tw/cra/StructureDefinition/Patient-cra"
Id: CRADataModelToPatient
Title: "CRA 資料模型至 Patient CRA Profile"
* child.idCardNumber -> "Patient.identifier[idCardNumber]"
* child.name -> "Patient.name"
* child.birthday -> "Patient.birthDate"

Mapping: CRADataModelToAddress
Source: CRADataModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Address-twss-base"
Id: CRADataModelToAddress
Title: "CRA 邏輯模型對應至 TWSS Base Address Profile"
* child.district -> "Address.district"

Mapping: CRADataModelToClaim
Source: CRADataModel
Target: "https://sfaa.gov.tw/cra/StructureDefinition/Claim-cra"
Id: CRADataModelToClaim
Title: "CRA 資料模型至 Claim CRA Profile"
* subsidyApplication.applicationNumber -> "Claim.identifier"
* subsidyApplication.applicationDate -> "Claim.created"

Mapping: CRADataModelToRelatedPerson
Source: CRADataModel
Target: "https://sfaa.gov.tw/cra/StructureDefinition/RelatedPerson-cra"
Id: CRADataModelToRelatedPerson
Title: "CRA 資料模型至 RelatedPerson CRA Profile"
* subsidyApplication.applicant.applicantIdCardNumber -> "RelatedPerson.identifier[idCardNumber]"
* subsidyApplication.applicant.applicantName -> "RelatedPerson.name"
* subsidyApplication.applicant -> "Claim.supportingInfo[applicant].valueReference"
* subsidyApplication.parity -> "Claim.supportingInfo[parity].valueString"

Mapping: CRADataModelToClaimResponse
Source: CRADataModel
Target: "https://sfaa.gov.tw/cra/StructureDefinition/ClaimResponse-cra"
Id: CRADataModelToClaimResponse
Title: "CRA 資料模型至 ClaimResponse CRA Profile"
* subsidyProvision.reviewCheckDate -> "ClaimResponse.created"
* subsidyProvision.subsidyStartYearMonth -> "ClaimResponse.extension[subsidyPeriod].extension[start].valueDate"
* subsidyProvision.subsidyEndYearMonth -> "ClaimResponse.extension[subsidyPeriod].extension[end].valueDate"
* subsidyProvision.approvedSubsidyAmount -> "ClaimResponse.item.adjudication:approvedBenefit.amount"
* subsidyProvision.suspensionApprovalYearMonth -> "ClaimResponse.extension[benefitSuspensionStart].valueDate"
