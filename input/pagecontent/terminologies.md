本 IG 未新增 CodeSystem 或 ValueSet。育兒津貼補助別、補助核定結果、胎次及補助期間等術語，均沿用臺灣社政領域基礎實作指引（TWSS Base IG）既有定義。

### 值集（Value Sets）

- [TWSS-申請補助別值集](https://sfaa.gov.tw/base/ValueSet-twss-subsidy-service-type-vs.html)
- [TWSS-補助核定結果值集](https://sfaa.gov.tw/base/ValueSet-twss-subsidy-approval-decision-vs.html)

### 代碼系統（Code Systems）

- [TWSS-申請補助別代碼系統](https://sfaa.gov.tw/base/CodeSystem-twss-subsidy-service-type.html)：本 IG 固定使用 `CRA`，表達未滿兩歲兒童育兒津貼資訊系統。
- [TWSS-補助核定結果代碼系統](https://sfaa.gov.tw/base/CodeSystem-twss-subsidy-approval-decision.html)：本 IG 固定使用 `approved`，表達已通過核定。
- [TWSS-補助申請補充資訊類型](https://sfaa.gov.tw/base/CodeSystem-twss-claim-supporting-info-type.html)：本 IG 使用 `parity` 識別 Claim 中的胎次補充資訊。
- [HL7 Claim Adjudication CodeSystem](http://terminology.hl7.org/CodeSystem/adjudication)：`ClaimResponse.item.adjudication.category` 固定使用 `benefit`，表達核定補助金額。
