RuleSet: CRAResourceCapability(resource, profile)
* rest.resource[+].type = #{resource}
* rest.resource[=].profile = "{profile}"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].referencePolicy = #resolves

RuleSet: CRANativeSearchParam(name, definition, type)
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{definition}"
* rest.resource[=].searchParam[=].type = #{type}
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY

RuleSet: CRAResourceDefinitions
* insert CRAResourceCapability(Bundle, https://sfaa.gov.tw/cra/StructureDefinition/Bundle-cra-eligibility)
* insert CRANativeSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, token)
* insert CRANativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Bundle-identifier, token)
* insert CRANativeSearchParam(type, http://hl7.org/fhir/SearchParameter/Bundle-type, token)

* insert CRAResourceCapability(Claim, https://sfaa.gov.tw/cra/StructureDefinition/Claim-cra)
* insert CRANativeSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, token)
* insert CRANativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Claim-identifier, token)
* insert CRANativeSearchParam(patient, http://hl7.org/fhir/SearchParameter/Claim-patient, reference)
* insert CRANativeSearchParam(status, http://hl7.org/fhir/SearchParameter/Claim-status, token)

* insert CRAResourceCapability(ClaimResponse, https://sfaa.gov.tw/cra/StructureDefinition/ClaimResponse-cra)
* insert CRANativeSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, token)
* insert CRANativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/ClaimResponse-identifier, token)
* insert CRANativeSearchParam(request, http://hl7.org/fhir/SearchParameter/ClaimResponse-request, reference)
* insert CRANativeSearchParam(patient, http://hl7.org/fhir/SearchParameter/ClaimResponse-patient, reference)
* insert CRANativeSearchParam(outcome, http://hl7.org/fhir/SearchParameter/ClaimResponse-outcome, token)

* insert CRAResourceCapability(Coverage, https://sfaa.gov.tw/cra/StructureDefinition/Coverage-cra)
* insert CRANativeSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, token)
* insert CRANativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Coverage-identifier, token)
* insert CRANativeSearchParam(beneficiary, http://hl7.org/fhir/SearchParameter/Coverage-beneficiary, reference)
* insert CRANativeSearchParam(status, http://hl7.org/fhir/SearchParameter/Coverage-status, token)

* insert CRAResourceCapability(Organization, https://sfaa.gov.tw/base/StructureDefinition/Organization-twss-base)
* insert CRANativeSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, token)
* insert CRANativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Organization-identifier, token)
* insert CRANativeSearchParam(name, http://hl7.org/fhir/SearchParameter/Organization-name, string)

* insert CRAResourceCapability(Patient, https://sfaa.gov.tw/cra/StructureDefinition/Patient-cra)
* insert CRANativeSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, token)
* insert CRANativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Patient-identifier, token)
* insert CRANativeSearchParam(name, http://hl7.org/fhir/SearchParameter/Patient-name, string)
* insert CRANativeSearchParam(birthdate, http://hl7.org/fhir/SearchParameter/individual-birthdate, date)

* insert CRAResourceCapability(RelatedPerson, https://sfaa.gov.tw/cra/StructureDefinition/RelatedPerson-cra)
* insert CRANativeSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, token)
* insert CRANativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/RelatedPerson-identifier, token)
* insert CRANativeSearchParam(patient, http://hl7.org/fhir/SearchParameter/RelatedPerson-patient, reference)
* insert CRANativeSearchParam(relationship, http://hl7.org/fhir/SearchParameter/RelatedPerson-relationship, token)

RuleSet: CRACommonRest
* rest.security.service[0] = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR
* rest.security.description = "安全性要求請參閱本 IG 的安全性頁面。"
* rest.interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #SHOULD
* rest.interaction[=].code = #transaction
* rest.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #SHOULD
* rest.interaction[=].code = #batch

RuleSet: CRANarrative(mode, role)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>未滿兩歲育兒津貼服務實作指引-{role}</h2><ul><li>實作指引版本：0.0.1</li><li>FHIR版本：4.0.1</li><li>支援格式：<code>json</code>、<code>xml</code></li><li>發布單位：衛生福利部社會及家庭署</li></ul><h3>建議應該（SHOULD）實作的IGs</h3><ul><li><a href=\"index.html\">未滿兩歲育兒津貼服務實作指引</a></li><li><a href=\"https://build.fhir.org/ig/sfaassn2025-source/base/\">臺灣社政領域基礎實作指引（TWSS Base IG）</a></li></ul><h2>{mode} FHIR RESTful功能要求</h2><div class=\"panel panel-default\"><div class=\"panel-heading\"><h3 class=\"panel-title\">能力聲明摘要</h3></div><div class=\"panel-body\"><p>{role}建議應該（SHOULD）支援本能力聲明所列之 Resource 與 Profile，並以 FHIR R4 RESTful API 交換資料。Resource 的 create、read、vread 與 update 互動建議應該（SHOULD）支援；查詢功能可能可以（MAY）支援。</p></div></div><h3>Resources或Profiles的RESTful功能</h3><h4>Summary</h4><div class=\"table-responsive\"><table class=\"table table-condensed table-hover\"><thead><tr><th><b>Resource名稱</b></th><th><b>Profile</b></th><th>Create</th><th>Read</th><th>VRead</th><th>Delete</th><th>Update</th><th><b>可能可以支援的查詢參數</b></th></tr></thead><tbody><tr><td><a href=\"#Bundle-RESTful\">Bundle</a></td><td>支援的Profiles<br/>  <a href=\"StructureDefinition-Bundle-cra-eligibility.html\">育兒津貼資格交換-Bundle CRA</a></td><td class=\"text-center\">y</td><td class=\"text-center\">y</td><td class=\"text-center\">y</td><td class=\"text-center\"/><td class=\"text-center\">y</td><td><a href=\"https://hl7.org/fhir/R4/bundle.html#search\">查看 Bundle 查詢參數</a></td></tr><tr><td><a href=\"#Claim-RESTful\">Claim</a></td><td>支援的Profiles<br/>  <a href=\"StructureDefinition-Claim-cra.html\">育兒津貼申請-Claim CRA</a></td><td class=\"text-center\">y</td><td class=\"text-center\">y</td><td class=\"text-center\">y</td><td class=\"text-center\"/><td class=\"text-center\">y</td><td><a href=\"https://hl7.org/fhir/R4/claim.html#search\">查看 Claim 查詢參數</a></td></tr><tr><td><a href=\"#ClaimResponse-RESTful\">ClaimResponse</a></td><td>支援的Profiles<br/>  <a href=\"StructureDefinition-ClaimResponse-cra.html\">育兒津貼審核結果-ClaimResponse CRA</a></td><td class=\"text-center\">y</td><td class=\"text-center\">y</td><td class=\"text-center\">y</td><td class=\"text-center\"/><td class=\"text-center\">y</td><td><a href=\"https://hl7.org/fhir/R4/claimresponse.html#search\">查看 ClaimResponse 查詢參數</a></td></tr><tr><td><a href=\"#Coverage-RESTful\">Coverage</a></td><td>支援的Profiles<br/>  <a href=\"StructureDefinition-Coverage-cra.html\">育兒津貼資格-Coverage CRA</a></td><td class=\"text-center\">y</td><td class=\"text-center\">y</td><td class=\"text-center\">y</td><td class=\"text-center\"/><td class=\"text-center\">y</td><td><a href=\"https://hl7.org/fhir/R4/coverage.html#search\">查看 Coverage 查詢參數</a></td></tr><tr><td><a href=\"#Organization-RESTful\">Organization</a></td><td>支援的Profiles<br/>  <a href=\"https://build.fhir.org/ig/sfaassn2025-source/base/StructureDefinition-Organization-twss-base.html\">機構資料-Organization TWSS Base</a></td><td class=\"text-center\">y</td><td class=\"text-center\">y</td><td class=\"text-center\">y</td><td class=\"text-center\"/><td class=\"text-center\">y</td><td><a href=\"https://hl7.org/fhir/R4/organization.html#search\">查看 Organization 查詢參數</a></td></tr><tr><td><a href=\"#Patient-RESTful\">Patient</a></td><td>支援的Profiles<br/>  <a href=\"StructureDefinition-Patient-cra.html\">育兒津貼個案-Patient CRA</a></td><td class=\"text-center\">y</td><td class=\"text-center\">y</td><td class=\"text-center\">y</td><td class=\"text-center\"/><td class=\"text-center\">y</td><td><a href=\"https://hl7.org/fhir/R4/patient.html#search\">查看 Patient 查詢參數</a></td></tr><tr><td><a href=\"#RelatedPerson-RESTful\">RelatedPerson</a></td><td>支援的Profiles<br/>  <a href=\"StructureDefinition-RelatedPerson-cra.html\">育兒津貼申請人-RelatedPerson CRA</a></td><td class=\"text-center\">y</td><td class=\"text-center\">y</td><td class=\"text-center\">y</td><td class=\"text-center\"/><td class=\"text-center\">y</td><td><a href=\"https://hl7.org/fhir/R4/relatedperson.html#search\">查看 RelatedPerson 查詢參數</a></td></tr></tbody></table></div><h4 id=\"Bundle-RESTful\">Bundle-RESTful功能</h4><div class=\"panel panel-default\"><div class=\"panel-heading\"><h3 class=\"panel-title\">育兒津貼資格交換</h3></div><div class=\"panel-body\"><div class=\"row\"><div class=\"col-lg-4\"><strong>FHIR Resource</strong><br/><a href=\"https://hl7.org/fhir/R4/bundle.html\">Bundle</a></div><div class=\"col-lg-4\"><strong>支援的Profile</strong><br/><a href=\"StructureDefinition-Bundle-cra-eligibility.html\">育兒津貼資格交換-Bundle CRA</a></div><div class=\"col-lg-4\"><strong>查詢參數</strong><br/>可能可以（MAY）支援FHIR R4 Bundle 所定義之查詢參數。<br/><a href=\"https://hl7.org/fhir/R4/bundle.html#search\">查看 Bundle 查詢參數</a></div></div></div></div><h4 id=\"Claim-RESTful\">Claim-RESTful功能</h4><div class=\"panel panel-default\"><div class=\"panel-heading\"><h3 class=\"panel-title\">育兒津貼申請</h3></div><div class=\"panel-body\"><div class=\"row\"><div class=\"col-lg-4\"><strong>FHIR Resource</strong><br/><a href=\"https://hl7.org/fhir/R4/claim.html\">Claim</a></div><div class=\"col-lg-4\"><strong>支援的Profile</strong><br/><a href=\"StructureDefinition-Claim-cra.html\">育兒津貼申請-Claim CRA</a></div><div class=\"col-lg-4\"><strong>查詢參數</strong><br/>可能可以（MAY）支援FHIR R4 Claim 所定義之查詢參數。<br/><a href=\"https://hl7.org/fhir/R4/claim.html#search\">查看 Claim 查詢參數</a></div></div></div></div><h4 id=\"ClaimResponse-RESTful\">ClaimResponse-RESTful功能</h4><div class=\"panel panel-default\"><div class=\"panel-heading\"><h3 class=\"panel-title\">育兒津貼審核結果</h3></div><div class=\"panel-body\"><div class=\"row\"><div class=\"col-lg-4\"><strong>FHIR Resource</strong><br/><a href=\"https://hl7.org/fhir/R4/claimresponse.html\">ClaimResponse</a></div><div class=\"col-lg-4\"><strong>支援的Profile</strong><br/><a href=\"StructureDefinition-ClaimResponse-cra.html\">育兒津貼審核結果-ClaimResponse CRA</a></div><div class=\"col-lg-4\"><strong>查詢參數</strong><br/>可能可以（MAY）支援FHIR R4 ClaimResponse 所定義之查詢參數。<br/><a href=\"https://hl7.org/fhir/R4/claimresponse.html#search\">查看 ClaimResponse 查詢參數</a></div></div></div></div><h4 id=\"Coverage-RESTful\">Coverage-RESTful功能</h4><div class=\"panel panel-default\"><div class=\"panel-heading\"><h3 class=\"panel-title\">育兒津貼資格</h3></div><div class=\"panel-body\"><div class=\"row\"><div class=\"col-lg-4\"><strong>FHIR Resource</strong><br/><a href=\"https://hl7.org/fhir/R4/coverage.html\">Coverage</a></div><div class=\"col-lg-4\"><strong>支援的Profile</strong><br/><a href=\"StructureDefinition-Coverage-cra.html\">育兒津貼資格-Coverage CRA</a></div><div class=\"col-lg-4\"><strong>查詢參數</strong><br/>可能可以（MAY）支援FHIR R4 Coverage 所定義之查詢參數。<br/><a href=\"https://hl7.org/fhir/R4/coverage.html#search\">查看 Coverage 查詢參數</a></div></div></div></div><h4 id=\"Organization-RESTful\">Organization-RESTful功能</h4><div class=\"panel panel-default\"><div class=\"panel-heading\"><h3 class=\"panel-title\">機構資料</h3></div><div class=\"panel-body\"><div class=\"row\"><div class=\"col-lg-4\"><strong>FHIR Resource</strong><br/><a href=\"https://hl7.org/fhir/R4/organization.html\">Organization</a></div><div class=\"col-lg-4\"><strong>支援的Profile</strong><br/><a href=\"https://build.fhir.org/ig/sfaassn2025-source/base/StructureDefinition-Organization-twss-base.html\">機構資料-Organization TWSS Base</a></div><div class=\"col-lg-4\"><strong>查詢參數</strong><br/>可能可以（MAY）支援FHIR R4 Organization 所定義之查詢參數。<br/><a href=\"https://hl7.org/fhir/R4/organization.html#search\">查看 Organization 查詢參數</a></div></div></div></div><h4 id=\"Patient-RESTful\">Patient-RESTful功能</h4><div class=\"panel panel-default\"><div class=\"panel-heading\"><h3 class=\"panel-title\">育兒津貼個案</h3></div><div class=\"panel-body\"><div class=\"row\"><div class=\"col-lg-4\"><strong>FHIR Resource</strong><br/><a href=\"https://hl7.org/fhir/R4/patient.html\">Patient</a></div><div class=\"col-lg-4\"><strong>支援的Profile</strong><br/><a href=\"StructureDefinition-Patient-cra.html\">育兒津貼個案-Patient CRA</a></div><div class=\"col-lg-4\"><strong>查詢參數</strong><br/>可能可以（MAY）支援FHIR R4 Patient 所定義之查詢參數。<br/><a href=\"https://hl7.org/fhir/R4/patient.html#search\">查看 Patient 查詢參數</a></div></div></div></div><h4 id=\"RelatedPerson-RESTful\">RelatedPerson-RESTful功能</h4><div class=\"panel panel-default\"><div class=\"panel-heading\"><h3 class=\"panel-title\">育兒津貼申請人</h3></div><div class=\"panel-body\"><div class=\"row\"><div class=\"col-lg-4\"><strong>FHIR Resource</strong><br/><a href=\"https://hl7.org/fhir/R4/relatedperson.html\">RelatedPerson</a></div><div class=\"col-lg-4\"><strong>支援的Profile</strong><br/><a href=\"StructureDefinition-RelatedPerson-cra.html\">育兒津貼申請人-RelatedPerson CRA</a></div><div class=\"col-lg-4\"><strong>查詢參數</strong><br/>可能可以（MAY）支援FHIR R4 RelatedPerson 所定義之查詢參數。<br/><a href=\"https://hl7.org/fhir/R4/relatedperson.html#search\">查看 RelatedPerson 查詢參數</a></div></div></div></div><p>安全性要求請參閱<a href=\"security.html\">安全性</a>；查詢參數的完整說明請參閱<a href=\"searchparameters.html\">查詢參數</a>。</p></div>"

Instance: CapabilityStatementCRAServer
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://sfaa.gov.tw/cra/CapabilityStatement/CapabilityStatementCRAServer"
* version = "0.0.1"
* name = "CapabilityStatementCRAServer"
* title = "未滿兩歲育兒津貼服務實作指引-伺服端能力聲明"
* status = #draft
* experimental = false
* publisher = "衛生福利部社會及家庭署"
* date = "2026-10-15"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* patchFormat = #application/json-patch+json
* implementationGuide = "https://sfaa.gov.tw/cra/ImplementationGuide/tw.gov.mohw.sfaa.cra"
* description = "未滿兩歲育兒津貼服務實作指引伺服端能力聲明。"
* rest.mode = #server
* rest.documentation = "未滿兩歲育兒津貼服務實作指引伺服端應以 FHIR RESTful API 提供本能力聲明所列資源，支援 JSON 格式與標準 HTTP 狀態碼，並確認新增實例的 meta.profile 符合未滿兩歲育兒津貼服務實作指引 Profiles。"
* insert CRACommonRest
* insert CRAResourceDefinitions
* insert CRANarrative(server, 伺服端)

Instance: CapabilityStatementCRAClient
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://sfaa.gov.tw/cra/CapabilityStatement/CapabilityStatementCRAClient"
* version = "0.0.1"
* name = "CapabilityStatementCRAClient"
* title = "未滿兩歲育兒津貼服務實作指引-用戶端能力聲明"
* status = #draft
* experimental = false
* publisher = "衛生福利部社會及家庭署"
* date = "2026-10-15"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* patchFormat = #application/json-patch+json
* implementationGuide = "https://sfaa.gov.tw/cra/ImplementationGuide/tw.gov.mohw.sfaa.cra"
* description = "未滿兩歲育兒津貼服務實作指引用戶端能力聲明。"
* rest.mode = #client
* rest.documentation = "未滿兩歲育兒津貼服務實作指引用戶端應依本能力聲明所列資源與 Profile 使用 FHIR RESTful API。"
* insert CRACommonRest
* insert CRAResourceDefinitions
* insert CRANarrative(client, 用戶端)
