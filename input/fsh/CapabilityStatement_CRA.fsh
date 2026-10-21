Instance: CapabilityStatementCRAServer
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://sfaa.gov.tw/cra/CapabilityStatement/CapabilityStatementCRAServer"
* version = "0.0.1"
* name = "CapabilityStatementCRAServer"
* title = "CRA IG 伺服端能力聲明"
* status = #draft
* experimental = false
* publisher = "衛生福利部社會及家庭署"
* date = "2026-10-15"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* implementationGuide = "https://sfaa.gov.tw/cra/ImplementationGuide/tw.gov.mohw.sfaa.cra"
* description = "未滿兩歲育兒津貼服務實作指引伺服端能力聲明。"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>未滿兩歲育兒津貼服務實作指引-伺服端</h2><ul><li>實作指引版本：0.0.1</li><li>FHIR版本：4.0.1</li><li>支援格式：<code>application/fhir+json</code>、<code>application/fhir+xml</code></li><li>發布單位：衛生福利部社會及家庭署</li></ul><h3>FHIR RESTful功能</h3><p>托育服務整合資訊系統可能可以（MAY）接收符合<a href=\"StructureDefinition-Bundle-cra-eligibility.html\">育兒津貼資格交換-Bundle CRA</a>的每日資格交換資料，並驗證其中各 Resource 的 CRA 或 TWSS Base Profile。</p><p>本能力聲明不要求以個別 Resource REST 查詢方式取得資格資料；交換範圍與欄位請參閱<a href=\"models.html\">邏輯模型</a>。</p><p>安全性要求請參閱<a href=\"security.html\">安全性</a>。</p></div>"
* rest.mode = #server
* rest.documentation = "托育服務整合資訊系統伺服端可能可以（MAY）接收每日傳送的育兒津貼資格交換 Bundle。"
* rest.security.service[0] = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR
* rest.security.description = "安全性要求請參閱本 IG 的安全性頁面。"
* rest.resource[+].type = #Bundle
* rest.resource[=].profile = "https://sfaa.gov.tw/cra/StructureDefinition/Bundle-cra-eligibility"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #create

Instance: CapabilityStatementCRAClient
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://sfaa.gov.tw/cra/CapabilityStatement/CapabilityStatementCRAClient"
* version = "0.0.1"
* name = "CapabilityStatementCRAClient"
* title = "CRA IG 用戶端能力聲明"
* status = #draft
* experimental = false
* publisher = "衛生福利部社會及家庭署"
* date = "2026-10-15"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* implementationGuide = "https://sfaa.gov.tw/cra/ImplementationGuide/tw.gov.mohw.sfaa.cra"
* description = "未滿兩歲育兒津貼服務實作指引用戶端能力聲明。"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>未滿兩歲育兒津貼服務實作指引-用戶端</h2><ul><li>實作指引版本：0.0.1</li><li>FHIR版本：4.0.1</li><li>支援格式：<code>application/fhir+json</code>、<code>application/fhir+xml</code></li><li>發布單位：衛生福利部社會及家庭署</li></ul><h3>FHIR RESTful功能</h3><p>未滿兩歲育兒津貼資訊系統可能可以（MAY）建立並傳送符合<a href=\"StructureDefinition-Bundle-cra-eligibility.html\">育兒津貼資格交換-Bundle CRA</a>的每日資格交換資料至托育服務整合資訊系統。</p><p>本能力聲明不要求以個別 Resource REST 查詢方式取得資格資料；交換範圍與欄位請參閱<a href=\"models.html\">邏輯模型</a>。</p><p>安全性要求請參閱<a href=\"security.html\">安全性</a>。</p></div>"
* rest.mode = #client
* rest.documentation = "未滿兩歲育兒津貼資訊系統用戶端可能可以（MAY）建立並傳送每日育兒津貼資格交換 Bundle。"
* rest.security.service[0] = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR
* rest.security.description = "安全性要求請參閱本 IG 的安全性頁面。"
* rest.resource[+].type = #Bundle
* rest.resource[=].profile = "https://sfaa.gov.tw/cra/StructureDefinition/Bundle-cra-eligibility"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #create
