{% include quickstart-note.md %}

此 Profile 用於交換同一筆育兒津貼資格案件所需的個案、申請人、給付資格、申請與審核結果資源；Bundle 類型固定為 `collection`。

#### 可能可以支援以下查詢參數：

此 Profile 使用 FHIR R4 Bundle Resource；伺服端可能可以（MAY）支援以下 FHIR 原生查詢參數。完整定義請參考 [FHIR R4 Bundle 原生查詢參數](https://hl7.org/fhir/R4/bundle.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_id` | token | `GET [base]/Bundle/[id]` |
| `identifier` | token | `GET [base]/Bundle?identifier=[system]\|[value]` |
| `type` | token | `GET [base]/Bundle?type=collection` |
