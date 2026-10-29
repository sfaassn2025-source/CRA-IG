{% include quickstart-note.md %}

此 Profile 表達育兒津貼的受補助兒童，並沿用 TWSS Base IG 的個案基本資料設計；本情境交換身分證字號、姓名、出生日期及戶籍縣市。

#### 可能可以支援以下查詢參數：

此 Profile 使用 FHIR R4 Patient Resource；伺服端可能可以（MAY）支援以下 FHIR 原生查詢參數。完整定義請參考 [FHIR R4 Patient 原生查詢參數](https://hl7.org/fhir/R4/patient.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_id` | token | `GET [base]/Patient/[id]` |
| `identifier` | token | `GET [base]/Patient?identifier=[system]\|[value]` |
| `name` | string | `GET [base]/Patient?name=[value]` |
| `birthdate` | date | `GET [base]/Patient?birthdate=2025-01-15` |
