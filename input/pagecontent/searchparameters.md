本 IG 的交換方式為未滿兩歲育兒津貼資訊系統每日建立並傳送一筆 `Bundle.type = collection` 至托育服務整合資訊系統，而非由任一端以 RESTful 搜尋逐筆取得 Claim、ClaimResponse、Coverage、Patient 或 RelatedPerson。

因此，本 IG 不要求伺服端支援 Resource RESTful 查詢，也未另行定義專案型 SearchParameter。實作者如在既有系統中另外提供個別 Resource 的查詢服務，可依各 Resource 的 [FHIR R4 原生查詢參數](https://hl7.org/fhir/R4/search.html) 自行實作；該查詢服務不屬於本 IG 的必要交換範圍。

每日交換所使用的 Resource、欄位與 Reference 關係，請參閱[邏輯模型](models.html)及[育兒津貼資格交換-Bundle CRA Profile](StructureDefinition-Bundle-cra-eligibility.html)。
