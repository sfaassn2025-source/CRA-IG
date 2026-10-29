{% include quickstart-note.md %}

此 Profile 用於表達個案已核定的未滿兩歲兒童育兒津貼給付資格，並以 `beneficiary` 參照受補助兒童、以 `payor` 參照給付單位。

#### 可能可以支援以下查詢參數：

此 Profile 使用 FHIR R4 Coverage Resource；伺服端可能可以（MAY）支援以下 FHIR 原生查詢參數。完整定義請參考 [FHIR R4 Coverage 原生查詢參數](https://hl7.org/fhir/R4/coverage.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_id` | token | `GET [base]/Coverage/[id]` |
| `identifier` | token | `GET [base]/Coverage?identifier=[system]\|[value]` |
| `beneficiary` | reference | `GET [base]/Coverage?beneficiary=Patient/[id]` |
| `status` | token | `GET [base]/Coverage?status=active` |
