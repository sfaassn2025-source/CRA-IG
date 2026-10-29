{% include quickstart-note.md %}

此 Profile 用於交換未滿兩歲兒童育兒津貼申請資料。`supportingInfo[applicant]` 最多可參照二位申請人，`item.productOrService` 固定表達育兒津貼申請項目。

#### 可能可以支援以下查詢參數：

此 Profile 使用 FHIR R4 Claim Resource；伺服端可能可以（MAY）支援以下 FHIR 原生查詢參數。完整定義請參考 [FHIR R4 Claim 原生查詢參數](https://hl7.org/fhir/R4/claim.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_id` | token | `GET [base]/Claim/[id]` |
| `identifier` | token | `GET [base]/Claim?identifier=[system]\|[value]` |
| `patient` | reference | `GET [base]/Claim?patient=Patient/[id]` |
| `status` | token | `GET [base]/Claim?status=active` |
