### 專案介紹
<div  style="padding-left: 10px;"> 

<p>未滿兩歲育兒津貼服務實作指引（Child-Raising Allowance For Children Under The Age Of 2 Base IG, CRA IG）採用 HL7<sup>&reg;</sup> FHIR<sup>&reg;</sup> R4.0.1 建置，繼承臺灣社政領域基礎實作指引（TWSS Base IG），進一步定義未滿兩歲兒童育兒津貼與托育服務整合資訊系統交換資料時所使用的 Resources、資料項目、基數及資料型別。</p>

</div>

### 專案背景

<div  style="padding-left: 10px;"> 

<p>為辦理未滿兩歲兒童育兒津貼，衛生福利部社會及家庭署建置資訊系統供各直轄市、縣（市）政府及鄉（鎮、市、區）公所受理申請、審核及發放津貼。兒童須符合特定條件方可請領，因此需透過跨系統資料交換進行資格比對，避免與托育相關補助重複領取。</p>

</div>

### 專案範圍

#### 使用案例（Use Case）
<div style="padding-left: 10px;">
<p>本專案型 IG 涵蓋未滿兩歲兒童育兒津貼資訊系統每日提供正在領取育兒津貼之資格資料予托育服務整合資訊系統的交換情境。托育服務整合資訊系統取得資料後，比對幼兒身分識別碼與育兒津貼資格資料，以執行補助資格互斥判斷。</p>
<p>每日交換資料以 <code>Bundle.type = collection</code> 封裝；每筆資料集合包含受補助兒童、必要關係人、育兒津貼申請、補助資格及核定結果。補助審查與核定流程沿用 TWSS Base IG 的 Claim、Coverage 與 ClaimResponse 設計，本 IG 僅針對育兒津貼與托育資格比對情境進一步收斂。</p>

<div style="justify-content: center;display: flex;"><img class="figure-img img-responsive img-rounded center-block" src="usecase-daycare.png" alt="未滿兩歲育兒津貼資格交換使用情境圖" style="width: 70%; max-width: 760px; height: auto;" /></div>
<div style="clear:both;"></div>
</div>

#### 循序圖
<div style="padding-left: 10px;">
<ol>
  <li>未滿兩歲兒童育兒津貼資訊系統傳送每日正在領取育兒津貼之資格資料予托育服務整合資訊系統。</li>
  <li>托育服務整合資訊系統以 Bundle 建立交易的 HTTP 回應表達傳送成功或失敗；本 IG 目前未定義額外的業務回覆 Resource。</li>
</ol>

<div style="justify-content: center;display: flex;"><img class="figure-img img-responsive img-rounded center-block" src="sequence-daycare.png" alt="未滿兩歲育兒津貼資格交換循序圖" style="width: 60%; max-width: 560px; height: auto;" /></div>
<div style="clear:both;"></div>
</div>


### 如何閱讀這個實作指引(IG)
<div  style="padding-left: 10px;"> 
<p>本IG之網站架構圖如下圖所示。各功能說明如下：</p>

<img class="figure-img img-responsive img-rounded center-block" src="structure.png" alt="IG架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 90%;"/>
<div style="clear:both;"></div>

<ul>
	<li><strong><a href="index.html">應用說明</a></strong>：本IG介紹及背景說明。</li>
	<li><strong><a href="vision.html">視覺化邏輯模型</a></strong>：本IG邏輯模型架構視覺化圖。</li>
	<li><strong><a href="artifacts.html">規範文件</a></strong>
	<ul>
		<li><strong><a href="capabilitystatements.html">能力聲明</a>
			</strong>：應用本IG建置業務資料交換時，用戶端與伺服端可能可以（MAY）支援的 FHIR RESTful 功能。
		</li>
		<li><strong><a href="searchparameters.html">查詢參數</a>
			</strong>：本 IG 是否要求 Resource RESTful 查詢及其適用範圍。
		</li>
		<li><strong><a href="models.html">邏輯模型</a>
			</strong>：本IG的所有邏輯模型(Logical Models)，邏輯模型會定義相應情境下使用的所有資料欄位。為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」瞭解各資料欄位實際使用本IG的哪個Profiles的哪個資料項目(element)。
		</li>
    	<li><strong><a href="profiles-and-extensions.html">FHIR Profiles</a></strong>：
        	<ul>
          		<li>本IG的所有Profiles之定義與範例。</li>
          		<li>各資料項目不同實作強制程度的Terminology。</li>
        	</ul>
      	</li>
		<li><strong><a href="terminologies.html">專門術語</a>
			</strong>：本IG所使用的專門術語，包括代碼系統（Code Systems）及值集（Value Sets）。
		</li>
	</ul>
	</li>
	<li><strong><a href="examples.html">範例</a></strong>：本IG所定義Profiles之範例檔。</li>
	<li><strong><a href="downloads.html">定義與範例檔下載</a></strong>：實作者若不偏好使用FHIR RESTful API驗證資料是否符合Profiles，可直接下載所需的格式驗證檔，包括XML、JSON及Turtle三種格式，亦可於此下載完整範例檔。</li>
	<li><strong><a href="security.html">安全性</a></strong>：主要說明採用本IG網站進行實作時，有關資料存取授權的作法。</li>
	<li><strong><a href="history.html">版本異動</a></strong>：若本IG網站的版本有所異動，皆可透過<a href="history.html">異動說明頁</a>瞭解版本間的異動差異。</li>
</ul>
</div>

### 作者與貢獻者
