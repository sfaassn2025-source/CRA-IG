### Resource之Profiles

以下 Profiles 僅收斂未滿兩歲育兒津貼系統提供目前有效資格資料予托育服務整合資訊系統的交換需求，均繼承臺灣社政領域基礎實作指引（TWSS Base IG）的相應 Profile。

#### Bundle
- [育兒津貼資格交換-Bundle CRA](StructureDefinition-Bundle-cra-eligibility.html)

#### Claim
- [育兒津貼申請-Claim CRA](StructureDefinition-Claim-cra.html)

#### ClaimResponse
- [育兒津貼核定資格-ClaimResponse CRA](StructureDefinition-ClaimResponse-cra.html)

#### Coverage
- [育兒津貼資格-Coverage CRA](StructureDefinition-Coverage-cra.html)

#### Organization
- [機構資料-Organization TWSS Base](https://sfaa.gov.tw/base/StructureDefinition-Organization-twss-base.html)：本交換固定以「衛生福利部社會及家庭署」作為育兒津貼給付及承辦單位，供 Coverage、Claim 及 ClaimResponse 參照。本 IG 沿用 TWSS Base Profile，不另建專案型 Organization Profile；各實作環境應以其正式資源 ID 建立相應 Reference。

#### Patient
- [個案資訊-Patient CRA](StructureDefinition-Patient-cra.html)

#### RelatedPerson
- [育兒津貼關係人-RelatedPerson CRA](StructureDefinition-RelatedPerson-cra.html)

### 沿用之TWSS Base IG Extension

- [補助期間](https://sfaa.gov.tw/base/StructureDefinition-twss-claim-subsidy-period.html)

本 IG 未新增自訂 Extension；上述 Extension 的定義、基數與術語約束均以 TWSS Base IG 為準。
