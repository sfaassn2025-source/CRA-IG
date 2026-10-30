Instance: cra-pat-min
InstanceOf: PatientCRA
Title: "育兒津貼受補助兒童範例"
Description: "符合個案資訊-Patient CRA Profile 的受補助兒童範例。"
Usage: #example
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>育兒津貼個案範例</b></h3>
  <blockquote>
    <p><b>識別碼型別</b>：National Person Identifier <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#NNxxx）</span><br/><b>身分證字號（official）</b>：A123456789 （http://www.moi.gov.tw）</p>
  </blockquote>
  <p><b>姓名</b>：王小明（usual）</p>
  <p><b>出生日期</b>：2025-01-15</p>
  <p><b>戶籍縣市</b>：臺北市 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://build.fhir.org/ig/sfaassn2025-source/base/CodeSystem-twss-county-city-code.html">TWSS-縣市行政區域代碼</a>#6300000000）</span></p>
</div>
"""

* meta.profile[+] = "https://sfaa.gov.tw/cra/StructureDefinition/Patient-cra|0.0.1"
* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A123456789"
* name[usual].use = #usual
* name[usual].text = "王小明"
* birthDate = "2025-01-15"
* address[0].district = "6300000000"

Instance: cra-related-person-min
InstanceOf: RelatedPersonCRA
Title: "育兒津貼關係人範例"
Description: "符合育兒津貼關係人-RelatedPerson CRA Profile 的關係人範例。"
Usage: #example
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>育兒津貼申請人一範例</b></h3>
  <blockquote>
    <p><b>識別碼型別</b>：National Person Identifier <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#NNxxx）</span><br/><b>身分證字號（official）</b>：B223456789</p>
  </blockquote>
  <p><b>關係人編號</b>：CRA-RP-000001 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#RI）</span></p>
  <p><b>個案</b>：<a href="Patient-cra-pat-min.html">Patient/cra-pat-min</a></p>
  <p><b>與個案關係</b>：母親 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v3-RoleCode">RoleCode</a>#MTH）</span></p>
  <p><b>姓名</b>：王小美</p>
</div>
"""

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
* relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* relationship.coding.code = #MTH
* name.text = "王小美"

Instance: cra-related-person-2-min
InstanceOf: RelatedPersonCRA
Title: "育兒津貼第二申請人範例"
Description: "符合育兒津貼關係人-RelatedPerson CRA Profile 的第二位申請人範例。"
Usage: #example
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>育兒津貼申請人二範例</b></h3>
  <blockquote>
    <p><b>識別碼型別</b>：National Person Identifier <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#NNxxx）</span><br/><b>身分證字號（official）</b>：C323456789</p>
  </blockquote>
  <p><b>關係人編號</b>：CRA-RP-000002 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#RI）</span></p>
  <p><b>個案</b>：<a href="Patient-cra-pat-min.html">Patient/cra-pat-min</a></p>
  <p><b>與個案關係</b>：父親 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v3-RoleCode">RoleCode</a>#FTH）</span></p>
  <p><b>姓名</b>：王爸爸</p>
</div>
"""

* meta.profile[+] = "https://sfaa.gov.tw/cra/StructureDefinition/RelatedPerson-cra|0.0.1"
* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].value = "C323456789"
* identifier[relationNumber].use = #usual
* identifier[relationNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[relationNumber].type.coding.code = #RI
* identifier[relationNumber].value = "CRA-RP-000002"
* active = true
* patient = Reference(cra-pat-min)
* relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* relationship.coding.code = #FTH
* name.text = "王爸爸"

Instance: cra-insurer-min
InstanceOf: OrganizationTWSSBase
Title: "育兒津貼給付單位範例"
Description: "育兒津貼資格交換範例中的給付單位。"
Usage: #example
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>育兒津貼給付單位範例</b></h3>
  <p><b>機構代碼</b>：SFAA-CRA <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#PRN）</span>（系統：<code>https://example.org/cra/organization-code</code>）</p>
  <p><b>啟用狀態</b>：true</p>
  <p><b>機構名稱</b>：衛生福利部社會及家庭署</p>
</div>
"""

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
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>育兒津貼資格範例</b></h3>
  <p><b>資格狀態</b>：啟用中 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/codesystem-fm-status.html">Financial Resource Status Codes</a>#active）</span></p>
  <p><b>補助類型</b>：未滿兩歲兒童育兒津貼</p>
  <p><b>受益人</b>：<a href="Patient-cra-pat-min.html">Patient/cra-pat-min</a></p>
  <p><b>給付單位</b>：<a href="Organization-cra-insurer-min.html">Organization/cra-insurer-min</a></p>
  <p><b>資格適用期間</b>：2026-11 至 2027-01</p>
</div>
"""

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
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>育兒津貼申請範例</b></h3>
  <p><b>申請案號</b>：CRA-115-000001（系統：<code>https://example.org/cra/application-number</code>）</p>
  <p><b>申請狀態</b>：啟用中 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/codesystem-claim-status.html">Claim Status</a>#active）</span></p>
  <p><b>申請類型</b>：社會福利補助申請 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://build.fhir.org/ig/sfaassn2025-source/base/CodeSystem-twss-claim-type.html">TWSS 補助申請類型</a>#social-welfare-subsidy）</span></p>
  <p><b>用途</b>：申請 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/codesystem-claim-use.html">Claim Use</a>#claim）</span>；<b>優先順序</b>：一般；<b>建立日期</b>：2026-10-15</p>
  <p><b>個案</b>：<a href="Patient-cra-pat-min.html">Patient/cra-pat-min</a></p>
  <p><b>給付單位／服務提供者</b>：<a href="Organization-cra-insurer-min.html">Organization/cra-insurer-min</a></p>
  <p><b>申請人</b>：<a href="RelatedPerson-cra-related-person-min.html">RelatedPerson/cra-related-person-min</a>、<a href="RelatedPerson-cra-related-person-2-min.html">RelatedPerson/cra-related-person-2-min</a></p>
  <p><b>胎次</b>：2</p>
  <p><b>補助資格</b>：<a href="Coverage-cra-coverage-min.html">Coverage/cra-coverage-min</a></p>
  <p><b>申請補助別</b>：未滿2歲兒童育兒津貼資訊系統 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://build.fhir.org/ig/sfaassn2025-source/base/CodeSystem-twss-subsidy-service-type.html">TWSS 申請補助別</a>#CRA）</span></p>
</div>
"""

* meta.profile[+] = "https://sfaa.gov.tw/cra/StructureDefinition/Claim-cra|0.0.1"
* identifier[0].system = "https://example.org/cra/application-number"
* identifier[0].value = "CRA-115-000001"
* status = #active
* type = https://sfaa.gov.tw/base/CodeSystem/twss-claim-type#social-welfare-subsidy "社會福利補助申請"
* use = #claim
* patient = Reference(cra-pat-min)
* created = "2026-10-15"
* insurer = Reference(cra-insurer-min)
* provider = Reference(cra-insurer-min)
* priority.text = "一般"
* supportingInfo[applicant][0].sequence = 1
* supportingInfo[applicant][0].category.coding = TWSSClaimSupportingInfoType#applicant "申請人"
* supportingInfo[applicant][0].valueReference = Reference(cra-related-person-min)
* supportingInfo[applicant][1].sequence = 2
* supportingInfo[applicant][1].category.coding = TWSSClaimSupportingInfoType#applicant "申請人"
* supportingInfo[applicant][1].valueReference = Reference(cra-related-person-2-min)
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
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>育兒津貼審核結果範例</b></h3>
  <p><b>回覆狀態</b>：啟用中 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/codesystem-fm-status.html">Financial Resource Status Codes</a>#active）</span>；<b>用途</b>：申請 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/codesystem-claim-use.html">Claim Use</a>#claim）</span>；<b>處理結果</b>：處理完成 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/codesystem-claim-outcome.html">Claim Processing Codes</a>#complete）</span></p>
  <p><b>補助申請類型</b>：社會福利補助申請 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://build.fhir.org/ig/sfaassn2025-source/base/CodeSystem-twss-claim-type.html">TWSS 補助申請類型</a>#social-welfare-subsidy）</span></p>
  <p><b>個案</b>：<a href="Patient-cra-pat-min.html">Patient/cra-pat-min</a></p>
  <p><b>給付單位／申請處理者</b>：<a href="Organization-cra-insurer-min.html">Organization/cra-insurer-min</a></p>
  <p><b>原申請案</b>：<a href="Claim-cra-claim-min.html">Claim/cra-claim-min</a></p>
  <p><b>建立日期</b>：2026-10-16；<b>核定說明</b>：核定通過</p>
  <p><b>補助期間</b>：2026-11 至 2027-01；<b>停發起始日期</b>：2027-02</p>
  <p><b>核定金額類別</b>：Benefit Amount <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/adjudication">Adjudication</a>#benefit）</span></p>
  <p><b>審核決定</b>：通過 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://build.fhir.org/ig/sfaassn2025-source/base/CodeSystem-twss-subsidy-approval-decision.html">TWSS 補助審核決定</a>#approved）</span>；<b>核定金額</b>：5,000 TWD</p>
  <p><b>補助資格</b>：<a href="Coverage-cra-coverage-min.html">Coverage/cra-coverage-min</a></p>
</div>
"""

* meta.profile[+] = "https://sfaa.gov.tw/cra/StructureDefinition/ClaimResponse-cra|0.0.1"
* status = #active
* type = https://sfaa.gov.tw/base/CodeSystem/twss-claim-type#social-welfare-subsidy "社會福利補助申請"
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
* extension[suspensionApprovalYearMonth].valueDate = "2027-02"
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
* entry[relatedPerson][1].fullUrl = "https://example.org/fhir/RelatedPerson/cra-related-person-2-min"
* entry[relatedPerson][1].resource = cra-related-person-2-min
* entry[insurer].fullUrl = "https://example.org/fhir/Organization/cra-insurer-min"
* entry[insurer].resource = cra-insurer-min
* entry[coverage].fullUrl = "https://example.org/fhir/Coverage/cra-coverage-min"
* entry[coverage].resource = cra-coverage-min
* entry[claim].fullUrl = "https://example.org/fhir/Claim/cra-claim-min"
* entry[claim].resource = cra-claim-min
* entry[claimResponse].fullUrl = "https://example.org/fhir/ClaimResponse/cra-claimresponse-min"
* entry[claimResponse].resource = cra-claimresponse-min
