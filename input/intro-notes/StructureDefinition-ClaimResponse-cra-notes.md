{% include quickstart-note.md %}

此 Profile 用於交換育兒津貼的正式審核結果、核定補助金額、補助期間與核停年月；`request` 參照相對應的育兒津貼申請 Claim。

#### 可能可以支援以下查詢參數：

此 Profile 使用 FHIR R4 ClaimResponse Resource；伺服端可能可以（MAY）支援以下 FHIR 原生查詢參數。完整定義請參考 [FHIR R4 ClaimResponse 原生查詢參數](https://hl7.org/fhir/R4/claimresponse.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_id` | token | `GET [base]/ClaimResponse/[id]` |
| `identifier` | token | `GET [base]/ClaimResponse?identifier=[system]\|[value]` |
| `patient` | reference | `GET [base]/ClaimResponse?patient=Patient/[id]` |
| `request` | reference | `GET [base]/ClaimResponse?request=Claim/[id]` |
| `outcome` | token | `GET [base]/ClaimResponse?outcome=complete` |
