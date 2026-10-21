### 視覺化邏輯模型圖
<div style="padding-left: 10px;">
<p>本 IG 以每日資格交換 Bundle 為單一交換單位。Bundle 內的 Resource 關係如下：</p>

| 資料群組 | Resource / Profile | 主要 Reference 關係 |
| --- | --- | --- |
| 受補助兒童 | Patient CRA | Claim、Coverage、ClaimResponse 與 RelatedPerson 均指向同一名個案。 |
| 關係人 | RelatedPerson CRA | `RelatedPerson.patient` 指向受補助兒童。 |
| 給付單位 | Organization TWSS Base | 固定為衛生福利部社會及家庭署；Coverage、Claim 與 ClaimResponse 均參照同一筆 Organization。 |
| 補助資格 | Coverage CRA | `Coverage.beneficiary` 指向受補助兒童；`Coverage.payor` 指向給付單位。 |
| 補助申請 | Claim CRA | `Claim.patient` 指向受補助兒童；`Claim.insurance.coverage` 指向補助資格。 |
| 核定資格 | ClaimResponse CRA | `ClaimResponse.request` 指向申請；`ClaimResponse.insurance.coverage` 指向補助資格。 |

完整欄位對應請參閱[邏輯模型](models.html)；可編輯的 draw.io 原始圖檔隨本 IG 原始碼的 `input/images-source` 提供。
</div>

### 圖例說明圖
<div  style="padding-left: 10px;"> 
<img class="figure-img img-responsive img-rounded center-block" src="legend.png" alt="圖例說明" style="display: block;margin-left: auto;margin-right: auto;width: 90%;"/>
</div>

<br>
