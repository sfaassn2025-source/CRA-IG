以下列出本 IG 各 Resource 可能可以（MAY）支援的 FHIR R4 原生查詢參數。

### 對外服務之 API

#### 以 Resource 分類

##### Bundle
詳細定義請參考 [FHIR R4 Bundle 原生查詢參數](https://hl7.org/fhir/R4/bundle.html#search)。
- `_id` (token)
- `identifier` (token)
- `message` (reference)
- `timestamp` (date)
- `type` (token)

##### Claim
詳細定義請參考 [FHIR R4 Claim 原生查詢參數](https://hl7.org/fhir/R4/claim.html#search)。
- `_id` (token)
- `_lastUpdated` (date)
- `created` (date)
- `identifier` (token)
- `insurer` (reference)
- `patient` (reference)
- `payee` (reference)
- `provider` (reference)
- `status` (token)
- `use` (token)

##### ClaimResponse
詳細定義請參考 [FHIR R4 ClaimResponse 原生查詢參數](https://hl7.org/fhir/R4/claimresponse.html#search)。
- `_id` (token)
- `_lastUpdated` (date)
- `created` (date)
- `identifier` (token)
- `insurer` (reference)
- `outcome` (token)
- `patient` (reference)
- `request` (reference)
- `requestor` (reference)
- `status` (token)
- `use` (token)

##### Coverage
詳細定義請參考 [FHIR R4 Coverage 原生查詢參數](https://hl7.org/fhir/R4/coverage.html#search)。
- `_id` (token)
- `_lastUpdated` (date)
- `beneficiary` (reference)
- `identifier` (token)
- `payor` (reference)
- `policy-holder` (reference)
- `status` (token)
- `subscriber` (reference)
- `type` (token)

##### Organization
詳細定義請參考 [FHIR R4 Organization 原生查詢參數](https://hl7.org/fhir/R4/organization.html#search)。
- `_id` (token)
- `_lastUpdated` (date)
- `active` (token)
- `address` (string)
- `identifier` (token)
- `name` (string)
- `partof` (reference)
- `phonetic` (string)
- `type` (token)

##### Patient
詳細定義請參考 [FHIR R4 Patient 原生查詢參數](https://hl7.org/fhir/R4/patient.html#search)。
- `_id` (token)
- `_lastUpdated` (date)
- `active` (token)
- `address` (string)
- `birthdate` (date)
- `family` (string)
- `gender` (token)
- `given` (string)
- `identifier` (token)
- `name` (string)
- `phone` (token)
- `telecom` (token)

##### RelatedPerson
詳細定義請參考 [FHIR R4 RelatedPerson 原生查詢參數](https://hl7.org/fhir/R4/relatedperson.html#search)。
- `_id` (token)
- `_lastUpdated` (date)
- `active` (token)
- `address` (string)
- `birthdate` (date)
- `identifier` (token)
- `name` (string)
- `patient` (reference)
- `phone` (token)
- `relationship` (token)
- `telecom` (token)
