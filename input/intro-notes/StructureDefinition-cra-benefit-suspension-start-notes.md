{% include quickstart-note.md %}

此 Extension 僅用於育兒津貼審核結果的 ClaimResponse，表達自該年月起停止領取育兒津貼的核停年月，並使用 `date` 的 YYYY-MM 精度。

此 Extension 為 ClaimResponse 的子元素，不另行定義 SearchParameter；可透過 [FHIR R4 ClaimResponse 原生查詢參數](https://hl7.org/fhir/R4/claimresponse.html#search) 查詢所屬審核結果資源。
