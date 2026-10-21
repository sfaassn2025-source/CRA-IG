實作者**建議應該（SHOULD）**了解與 FHIR 交易相關的[安全考量](http://hl7.org/fhir/R4/security.html)，特別是以下主題：

### [通訊（Communication）](http://hl7.org/fhir/R4/security.html#http)

### 驗證（Authentication）

### 授權／存取控制（Authorization/Access Control）

### 本專案安全一致性要求如下

- 系統**建議應該（SHOULD）**保留各種交易的稽核日誌（audit logs）。
- 系統**建議應該（SHOULD）**符合[FHIR 通訊安全（Communications Security）](http://hl7.org/fhir/R4/security.html#http)要求。
- 對於認證和授權，系統**建議應該（SHOULD）**支援用於用戶端與伺服端互動的[SMART App 執行框架（launch framework）](http://www.hl7.org/fhir/smart-app-launch/history.cfml)。FHIR 上的 SMART 規範包括啟用安全決策所需的 OAuth 2.0 範圍。
- 系統**建議應該（SHOULD）**依據國家、地方和機構政策實作同意要求；業務夥伴協定（Business Associate Agreements）**建議應該（SHOULD）**記錄系統相互同意的要求。
- 系統**可以（MAY）**透過加密和相關存取控制保護資料機密性；所使用的策略和方法不在本規範範圍內。
