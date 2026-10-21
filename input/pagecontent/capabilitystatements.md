本頁列出未滿兩歲育兒津貼服務實作指引的用戶端與伺服端能力聲明。未滿兩歲育兒津貼資訊系統可能可以（MAY）建立並傳送目前有效的育兒津貼資格交換 Bundle；托育服務整合資訊系統可能可以（MAY）接收並驗證該 Bundle，以執行補助資格比對。

本 IG 的必要交換互動為 `Bundle` 的 `create`。Claim、ClaimResponse、Coverage、Patient、RelatedPerson 與 Organization 為 Bundle 內的交換內容，不要求在本交換情境另行提供個別 Resource 的 RESTful 查詢端點。

托育服務整合資訊系統對傳送成功或失敗的回應，以 Bundle 建立交易的 HTTP 回應處理；目前沒有額外交換業務回覆 Resource 的需求。

{% include table-capabilitystatements.xhtml %}
