Logical: CRADataModel
Id: CRADataModel
Title: "未滿兩歲育兒津貼資格交換資料模型"
Description: """
本邏輯模型定義未滿兩歲育兒津貼資訊系統每日提供目前有效育兒津貼資格資料予托育服務整合資訊系統時，所交換的資料欄位。
本資料模型僅涵蓋育兒津貼與托育資格比對情境，不涵蓋脆弱家庭或其他跨系統流程。
"""

* child 1..1 BackboneElement "受補助兒童"
* child.identifier 1..1 Identifier "身份識別碼"
* child.caseNumber 0..1 Identifier "個案編號"
* child.name 0..1 HumanName "姓名"
* child.birthday 0..1 date "受補助人生日"
* child.city 0..1 string "鄉鎮市區"

* subsidyApplication 0..1 BackboneElement "育兒津貼申請"
* subsidyApplication.applicationNumber 0..1 Identifier "申請案號" "申請育兒津貼的案件編號；申請通過後沿用至結案。"
* subsidyApplication.applicationDate 0..1 date "申請日期"
* subsidyApplication.applicant 0..1 BackboneElement "申請人"
* subsidyApplication.applicant.applyIdCardNumber 0..1 Identifier "申請人身分證字號"
* subsidyApplication.applicant.applyName 0..1 HumanName "申請人姓名"
* subsidyApplication.otherRelatedPerson 0..1 BackboneElement "其他關係人"
* subsidyApplication.otherRelatedPerson.otherIdCardNumber 0..1 Identifier "其他關係人身分證字號"
* subsidyApplication.otherRelatedPerson.otherName 0..1 HumanName "其他關係人姓名"

* subsidyProvision 0..1 BackboneElement "已核定育兒津貼資格"
* subsidyProvision.reviewCheckDate 0..1 date "審核/查核日期"
* subsidyProvision.subsidyStartYearMonth 0..1 date "補助起始年月"
* subsidyProvision.subsidyEndYearMonth 0..1 date "補助結束年月"
* subsidyProvision.approvedSubsidyAmount 0..1 decimal "核定補助金額"

* subsidyApplication.parity 0..1 string "胎次" "申請育兒津貼時填寫的子女胎次；以字串保存來源系統的填報值。"
* cancellationDate 0..1 date "註銷日期" "最新版欄位表尚待托育系統確認原始欄位意義與 FHIR 對應，暫不納入交換 Profile。"

Mapping: CRADataModelToPatient
Source: CRADataModel
Target: "https://sfaa.gov.tw/cra/StructureDefinition/Patient-cra"
Id: CRADataModelToPatient
Title: "CRA 資料模型至 Patient CRA Profile"
* child.identifier -> "Patient.identifier[idCardNumber]"
* child.caseNumber -> "Patient.identifier[caseNumber].where(system = '<來源系統 URI>')"
* child.name -> "Patient.name"
* child.birthday -> "Patient.birthDate"
* child.city -> "Patient.address.city"

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
* subsidyApplication.applicant.applyIdCardNumber -> "RelatedPerson.identifier"
* subsidyApplication.applicant.applyName -> "RelatedPerson.name"
* subsidyApplication.otherRelatedPerson.otherIdCardNumber -> "RelatedPerson.identifier"
* subsidyApplication.otherRelatedPerson.otherName -> "RelatedPerson.name"
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
