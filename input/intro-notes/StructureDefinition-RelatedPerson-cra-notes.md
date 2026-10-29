{% include quickstart-note.md %}

此 Profile 表達育兒津貼申請人，並以 `patient` 參照受補助兒童。單一育兒津貼申請最多可參照二位申請人；每位申請人仍為獨立的 RelatedPerson 資源。

#### 可能可以支援以下查詢參數：

此 Profile 使用 FHIR R4 RelatedPerson Resource；伺服端可能可以（MAY）支援以下 FHIR 原生查詢參數。完整定義請參考 [FHIR R4 RelatedPerson 原生查詢參數](https://hl7.org/fhir/R4/relatedperson.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_id` | token | `GET [base]/RelatedPerson/[id]` |
| `identifier` | token | `GET [base]/RelatedPerson?identifier=[system]\|[value]` |
| `patient` | reference | `GET [base]/RelatedPerson?patient=Patient/[id]` |
| `relationship` | token | `GET [base]/RelatedPerson?relationship=[code]` |
