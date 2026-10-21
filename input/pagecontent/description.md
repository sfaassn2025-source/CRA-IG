### 相關程式版本
<table class="grid rwd-table">
  <thead>
    <tr>
      <th></th>
      <th>程式名稱</th>
      <th>版本</th>
      <th>型態</th>
      <th>說明</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>CGP11CryptATL.dll</td>
      <td>1.6.8.2250</td>
      <td>COM 元件</td>
      <td>簽章/取憑證/加解密的 32 位元元件</td>
    </tr>
    <tr>
      <td>2</td>
      <td>CGP11CryptATLx64.dll</td>
      <td>1.6.8.2250</td>
      <td>COM 元件</td>
      <td>簽章/取憑證/加解密的 64 位元元件</td>
    </tr>
    <tr>
      <td>3</td>
      <td>CGVAATL.dll</td>
      <td>5.1.2.8010</td>
      <td>COM 元件</td>
      <td>驗章 32 位元元件</td>
    </tr>
    <tr>
      <td>4</td>
      <td>CGVAATLx64.dll</td>
      <td>5.1.2.8010</td>
      <td>COM 元件</td>
      <td>驗章 64 位元元件</td>
    </tr>
    <tr>
      <td>5</td>
      <td>CGP11CryptJNI.jar</td>
      <td>1.2.15.7260</td>
      <td>jar</td>
      <td>JavaJNI 元件</td>
    </tr>
    <tr>
      <td>6</td>
      <td>CGP11CryptJNI.dll</td>
      <td>1.2.15.7260</td>
      <td>dll</td>
      <td>JavaJNI 元件(需放在 path 目錄下)</td>
    </tr>
  </tbody>
</table>

**注意事項:**
請確保在安裝檔、執行檔以及COM元件時都使用Administrator執行。這將確保您具有足夠的權限來順利進行安裝和執行，並能夠避免任何潛在的問題。
<br>

### Server環境設定須知
#### COM 元件註冊使用元件
1. CGP11CryptATL.dll(32 位元或 64 位元)(疾管署端/檢驗機構端用到)
2. CGVAATL.dll(32 位元或 64 位元)(疾管署端用到)
<br>

#### 註冊方式
步驟一、用系統管理員權限開啟 cmd 視窗

步驟二、將以上元件放在 C:\Windows 目錄

步驟三、在 cmd 視窗，輸入 regsvr32 CGP11CryptATL.dll 或 regsvr32 CGP11CryptATLx64.dll

步驟四、在 cmd 視窗，輸入 regsvr32 CGVAATL.dll 或 regsvr32 CGVAATLx64.dll
<br>

### Visual Studio 加入元件參考
<div style="clear:both;">
<p>選擇二個元件 CGP11CryptATLLib 和 CGVAATLLib，並在屬性的內嵌 interop 型別改為 False。</p>
<img class="figure-img img-responsive img-rounded center-block" src="Visual Studio加入元件參考1.png" alt="Visual Studio加入元件參考" style="display: block;margin-left: auto;margin-right: auto;width: 35%;"/>

<img class="figure-img img-responsive img-rounded center-block" src="Visual Studio加入元件參考2.png" alt="Visual Studio加入元件參考" style="display: block;margin-left: auto;margin-right: auto;width: 60%;"/>
</div>
<br>

### Visual Studio 組態管理員
<div style="clear:both;">
<p>若參考的是 32 位元元件，請在組態管理員新增 x86 平台，並指定 x86 平台。若參考的是 64 位元元件，請在組態管理員新增 x64 平台，並指定 x64 平台。</p>
<img class="figure-img img-responsive img-rounded center-block" src="Visual Studio加入元件參考3.png" alt="Visual Studio加入元件參考" style="display: block;margin-left: auto;margin-right: auto;width: 60%;"/>
</div>
<br>

### JavaJNI 使用元件
#### CGP11CryptJNI.dll(32 位元或 64 位元)(檢驗機構端用到)請根據作業系統的位元版本，決定放 32 或 64 位元 dll，放在 C:\Windows
#### CGP11CryptJNI.jar 
<br>

### CGP11CryptATL元件API
**CGP11CryptATL 參數符號** 


#### Common Flags

<table class="grid rwd-table">
  <tr>
    <td>參數符號</td>
    <td>對應值</td>
  </tr>
    <tr>
    <td>CG_FLAG_DETACHMSG</td>
    <td>0x00004000</td>
  </tr>
  <tr>
    <td>CG_ALGOR_SHA256</td>
    <td>0x04</td>
  </tr>
</table>
<br>

#### Key Generation Flags

<table class="grid rwd-table">
  <tr>
    <td>參數符號</td>
    <td>對應值</td>
  </tr>
 <tr>
    <td>CG_KU_NON_REPUDIATION</td>
    <td>0x0040</td>
  </tr>
</table>
<br>



#### CryptParsePKCS12

<table class="grid rwd-table">
  <tr>
    <td><strong>函式宣告</strong></td>
    <td>int CryptParsePKCS12 (string pfxpath, string bpass, string bkeypass);</td>
  </tr>
  <tr>
    <td><strong>函式說明</strong></td>
    <td>解析 PFX 格式之憑證檔</td>
  </tr>
  <tr>
    <td><strong>參數</strong></td>
    <td>
      <ul>
        <li>pfxpath: [in] PFX 檔案路徑</li>
        <li>bpass: [in] PFX 的密碼</li>
        <li>strKeyPass: [in] 金鑰密碼<br>解開私鑰的密碼。若私鑰為未加密過的 key，則此欄位應為 NULL。</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td><strong>回傳值</strong></td>
    <td>執行結果。</td>
  </tr>
  <tr>
    <td><strong>錯誤訊息處理</strong></td>
    <td>呼叫 GetErrorCode 回傳錯誤代碼。</td>
  </tr>
  <tr>
    <td><strong>其他回傳值</strong></td>
    <td>請參考 ErrorCode。</td>
  </tr>
  <tr>
    <td><strong>參考</strong></td>
    <td></td>
  </tr>
</table>
<br>


#### P12Sign

<table class="grid rwd-table">
  <tr>
    <td><strong>函式宣告</strong></td>
    <td>string P12Sign(string pfxpath, string password, string data, int iFlags, int iKeyUsage, int iHashFlag);</td>
  </tr>
  <tr>
    <td><strong>函式說明</strong></td>
    <td>取 PFX 憑證中的金鑰作簽章</td>
  </tr>
  <tr>
    <td><strong>參數</strong></td>
    <td>
      <ul>
        <li>pfxpath: [in] PFX 路徑</li>
        <li>password: [in] PFX 保護密碼</li>
        <li>data: [in] 欲簽章的資料</li>
        <li>iFlags: [in] 簽章參數。<br>
          附加憑證選項:<br>
          (預設:加入簽章憑證)<br>
          - CG_FLAG_CERT_NOATTACH: 不加入憑證<br>
          - CG_FLAG_CERT_ATTACHALL: 加入憑證路徑上的所有憑證<br>
          簽章原始訊息選項:<br>
          (預設:加入原始訊息)<br>
          - CG_FLAG_DETACHMSG: 不加入簽章原始訊息<br>
          不同選項的參數值可以 bit-wise OR 組合使用，但同一選項內的參數值不可同時使用。</li>
        <li>iKeyUsage: [in] 金鑰使用方式<br>
          - CG_KU_DIGITAL_SIGNATURE<br>
          - CG_KU_NON_REPUDIATION<br>
          - CG_KU_KEY_ENCIPHERMENT<br>
          - CG_KU_DATA_ENCIPHERMENT<br>
          - CG_KU_KEY_AGREEMENT<br>
          - CG_KU_KEY_CERT_SIGN<br>
          - CG_KU_CRL_SIGN<br>
          - CG_KU_ENCIPHER_ONLY<br>
          - CG_KU_DECIPHER_ONLY<br>
          不同選項的參數值可以 bit-wise OR 組合使用，但同一選項內的參數值不可同時使用，預設值為不指定。</li>
        <li>iHashFlag: [in] 指定待簽資料所使用的雜湊演算法<br>
          預設填 0 為 CG_ALGOR_SHA1<br>
          - CG_ALGOR_MD5: 0x01<br>
          - CG_ALGOR_SHA1 : 0x02<br>
          - CG_ALGOR_SHA256: 0x04<br>
          - CG_ALGOR_SHA384: 0x05<br>
          - CG_ALGOR_SHA512: 0x06</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td><strong>回傳值</strong></td>
    <td>簽章值</td>
  </tr>
  <tr>
    <td><strong>錯誤訊息處理</strong></td>
    <td>呼叫 GetErrorCode 回傳錯誤代碼。<br>CG_RTN_SUCCESS: 成功<br>其他回傳值請參考 ErrorCode。</td>
  </tr>
  <tr>
    <td><strong>參考</strong></td>
    <td></td>
  </tr>
</table>
<br>

#### CGCrypt_CertGetSubjectDirectoryAttrs

<table class="grid rwd-table">
  <tr>
    <td><strong>函式宣告</strong></td>
    <td>String CGCrypt_CertGetSubjectDirectoryAttrs (string sCert, string sOID, int iFlags);</td>
  </tr>
  <tr>
    <td><strong>函式說明</strong></td>
    <td>根據 OID 取得憑證擴充欄位資訊。</td>
  </tr>
  <tr>
    <td><strong>參數</strong></td>
    <td>
      <ul>
        <li>sCert: [in] base64 格式的 X509 憑證。</li>
        <li>sOID: [in] oid 字串。</li>
        <li>iFlags: [in] 保留參數，填 0。</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td><strong>回傳值</strong></td>
    <td>憑證擴充欄位資訊</td>
  </tr>
  <tr>
    <td><strong>錯誤訊息處理</strong></td>
    <td>呼叫 GetErrorCode 回傳錯誤代碼。<br>其他回傳值請參考 ErrorCode。</td>
  </tr>
  <tr>
    <td><strong>參考</strong></td>
    <td></td>
  </tr>
</table>
<br>




### CGP11CryptJNI 元件 API

#### P12Sign

<table class="grid rwd-table">
  <tr>
    <td><strong>函式宣告</strong></td>
    <td>String P12Sign(String pfxpath, String password, byte[] data, int iFlags, int iKeyUsage, int iHashFlag);</td>
  </tr>
  <tr>
    <td><strong>函式說明</strong></td>
    <td>取 PFX 憑證中的金鑰作簽章</td>
  </tr>
  <tr>
    <td><strong>參數</strong></td>
    <td>
      <ul>
        <li>pfxpath: [in] PFX 路徑</li>
        <li>password: [in] PFX 保護密碼</li>
        <li>data: [in] 欲簽章的資料</li>
        <li>iFlags: [in] 簽章參數。<br>
          附加憑證選項:(預設:加入簽章憑證)<br>
          - CG_FLAG_CERT_NOATTACH: 不加入憑證<br>
          - CG_FLAG_CERT_ATTACHALL: 加入憑證路徑上的所有憑證<br>
          原始訊息選項:(預設:加入原始訊息)<br>
          - CG_FLAG_DETACHMSG: 不加入簽章原始訊息<br>
          不同選項的參數值可以 bit-wise OR 組合使用，但同一選項內的參數值不可同時使用。</li>
        <li>iKeyUsage: [in] 金鑰使用方式<br>
          - CG_KU_DIGITAL_SIGNATURE<br>
          - CG_KU_NON_REPUDIATION<br>
          - CG_KU_KEY_ENCIPHERMENT<br>
          - CG_KU_DATA_ENCIPHERMENT<br>
          - CG_KU_KEY_AGREEMENT<br>
          - CG_KU_KEY_CERT_SIGN<br>
          - CG_KU_CRL_SIGN<br>
          - CG_KU_ENCIPHER_ONLY<br>
          - CG_KU_DECIPHER_ONLY<br>
          不同選項的參數值可以 bit-wise OR 組合使用，但同一選項內的參數值不可同時使用，預設值為不指定。</li>
        <li>iHashFlag: [in] 指定待簽資料所使用的雜湊演算法。<br>
          預設填 0 為 CG_ALGOR_SHA1<br>
          - CG_ALGOR_MD5: 0x01<br>
          - CG_ALGOR_SHA1: 0x02<br>
          - CG_ALGOR_SHA256: 0x04<br>
          - CG_ALGOR_SHA384: 0x05<br>
          - CG_ALGOR_SHA512: 0x06</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td><strong>回傳值</strong></td>
    <td>簽章值</td>
  </tr>
  <tr>
    <td><strong>錯誤訊息處理</strong></td>
    <td>呼叫 GetErrorCode 回傳錯誤代碼。<br>
      其他回傳值請參考 ErrorCode。</td>
  </tr>
  <tr>
    <td><strong>參考</strong></td>
    <td></td>
  </tr>
</table>
<br>

#### CryptParsePKCS12

<table class="grid rwd-table">
  <tr>
    <td><strong>函式宣告</strong></td>
    <td>int CryptParsePKCS12(BSTR pfxpath, BSTR bpass, BSTR bkeypass);</td>
  </tr>
  <tr>
    <td><strong>函式說明</strong></td>
    <td>解析 PFX 格式之憑證檔</td>
  </tr>
  <tr>
    <td><strong>參數</strong></td>
    <td>
      pfxpath: [in] PFX 檔案路徑<br>
      bpass: [in] PFX 的密碼<br>
      bkeypass: [in] 金鑰密碼<br>
      解開私鑰的密碼。若私鑰為未加密過的 key，則此欄位應為 NULL。
    </td>
  </tr>
  <tr>
    <td><strong>回傳值</strong></td>
    <td>執行結果</td>
  </tr>
  <tr>
    <td><strong>錯誤訊息處理</strong></td>
    <td>回傳值請參考 ErrorCode。</td>
  </tr>
  <tr>
    <td><strong>參考</strong></td>
    <td></td>
  </tr>
</table>
<br>

#### 錯誤碼列表

<table class="grid rwd-table">
    <tr>
        <th>錯誤訊息代碼</th>
        <th>錯誤訊息提示</th>
        <th>說明</th>
    </tr>
     <tr>
            <td>0</td>
            <td>CG_RTN_SUCCESS</td>
            <td>成功</td>
        </tr>
        <tr>
            <td>5001</td>
            <td>CG_RTN_ERROR</td>
            <td>一般錯誤</td>
        </tr>
        <tr>
            <td>5002</td>
            <td>CG_RTN_MEMALLOC_ERROR</td>
            <td>配置記憶體發生錯誤</td>
        </tr>
        <tr>
            <td>5003</td>
            <td>CG_RTN_BUFFER_TOO_SMALL</td>
            <td>空間不足</td>
        </tr>
        <tr>
            <td>5004</td>
            <td>CG_RTN_FUNCTION_UNSUPPORT</td>
            <td>未支援功能</td>
        </tr>
        <tr>
            <td>5005</td>
            <td>CG_RTN_INVALID_PARAM</td>
            <td>錯誤的參數</td>
        </tr>
        <tr>
            <td>5006</td>
            <td>CG_RTN_INVALID_HANDLE</td>
            <td>錯誤的 handle</td>
        </tr>
        <tr>
            <td>5007</td>
            <td>CG_RTN_LIB_EXPIRE</td>
            <td>試用版期限已過</td>
        </tr>
        <tr>
            <td>5008</td>
            <td>CG_RTN_BASE64_ERROR</td>
            <td>Base64 編碼錯誤</td>
        </tr>
        <tr>
            <td>5010</td>
            <td>CG_RTN_CERT_NOT_FOUND</td>
            <td>無法在 MS CryptoAPI Database 中找到指定憑證</td>
        </tr>
        <tr>
            <td>5011</td>
            <td>CG_RTN_CERT_EXPIRED</td>
            <td>憑證已過期</td>
        </tr>
        <tr>
            <td>5012</td>
            <td>CG_RTN_CERT_NOT_YET_VALID</td>
            <td>憑證尚未合法,無法使用</td>
        </tr>
        <tr>
            <td>5013</td>
            <td>CG_RTN_CERT_EXPIRE_OR_NOT_YET_USE</td>
            <td>憑證可能過期或無法使用</td>
        </tr>
        <tr>
            <td>5014</td>
            <td>CG_RTN_CERT_DENIED</td>
            <td>憑證主旨錯誤</td>
        </tr>
        <tr>
            <td>5015</td>
            <td>CG_RTN_CERT_NOISSUER</td>
            <td>無法找到憑證發行者</td>
        </tr>
        <tr>
            <td>5016</td>
            <td>CG_RTN_CERT_BAD_SIGNATURE</td>
            <td>不合法的憑證簽章</td>
        </tr>
        <tr>
            <td>5017</td>
            <td>CG_RTN_CERT_INVALID_KEYUSAGE</td>
            <td>憑證用途(加解密,簽驗章)不合適</td>
        </tr>
        <tr>
            <td>5020</td>
            <td>CG_RTN_CERT_REVOKED</td>
            <td>憑證已撤銷</td>
        </tr>
        <tr>
            <td>5021</td>
            <td>CG_RTN_CERT_KEY_COMPROMISED</td>
            <td>憑證已撤銷(金鑰洩露)</td>
        </tr>
        <tr>
            <td>5022</td>
            <td>CG_RTN_CERT_CA_COMPROMISED</td>
            <td>憑證已撤銷(CA compromised)</td>
        </tr>
        <tr>
            <td>5023</td>
            <td>CG_RTN_CERT_AFFILIATION_CHANGED</td>
            <td>憑證已撤銷(聯盟已變更)</td>
        </tr>
        <tr>
            <td>5024</td>
            <td>CG_RTN_CERT_SUPERSEDED</td>
            <td>憑證已撤銷(已取代)</td>
        </tr>
        <tr>
            <td>5025</td>
            <td>CG_RTN_CERT_CESSATION</td>
            <td>憑證</td>
        </tr>
        <tr>
            <td>5026</td>
            <td>CG_RTN_CERT_HOLD</td>
            <td>憑證保留或暫禁</td>
        </tr>
        <tr>
            <td>5028</td>
            <td>CG_RTN_CERT_REMOVEFROMCRL</td>
            <td></td>
        </tr>
        <tr>
            <td>5030</td>
            <td>CG_RTN_CRL_EXPIRED</td>
            <td>CRL 已過期</td>
        </tr>
        <tr>
            <td>5031</td>
            <td>CG_RTN_CRL_NOT_YET_VALID</td>
            <td>不合法的 CRL</td>
        </tr>
        <tr>
            <td>5032</td>
            <td>CG_RTN_CRL_NOT_FOUND</td>
            <td>無法找到 CRL</td>
        </tr>
        <tr>
            <td>5034</td>
            <td>CG_RTN_CRL_BAD_SIGNATURE</td>
            <td>CRL 簽章值不合法</td>
        </tr>
        <tr>
            <td>5035</td>
            <td>CG_RTN_GET_DIGEST_ERROR</td>
            <td>Digest 錯誤</td>
        </tr>
        <tr>
            <td>5036</td>
            <td>CG_RTN_BAD_SIGNATURE</td>
            <td>不合法的簽章</td>
        </tr>
        <tr>
            <td>5037</td>
            <td>CG_RTN_BAD_CONTENT</td>
            <td>內容錯誤</td>
        </tr>
        <tr>
            <td>5038</td>
            <td>CG_RTN_BAD_CAPTCHA</td>
            <td>錯誤的驗證碼</td>
        </tr>
        <tr>
            <td>5040</td>
            <td>CG_RTN_INVALID_CERT</td>
            <td>憑證格式錯誤</td>
        </tr>
        <tr>
            <td>5041</td>
            <td>CG_RTN_INVALID_CRL</td>
            <td>CRL 格式錯誤</td>
        </tr>
        <tr>
            <td>5042</td>
            <td>CG_RTN_INVALID_PKCS7</td>
            <td>錯誤的 PKCS7 格式</td>
        </tr>
        <tr>
            <td>5043</td>
            <td>CG_RTN_INVALID_KEY</td>
            <td>Key 的格式錯誤</td>
        </tr>
        <tr>
            <td>5044</td>
            <td>CG_RTN_INVALID_CERTREQ</td>
            <td>不合法的 PKCS10 格式</td>
        </tr>
        <tr>
            <td>5045</td>
            <td>CG_RTN_INVALID_FORMAT</td>
            <td>不合適的格式</td>
        </tr>
        <tr>
            <td>5046</td>
            <td>CG_RTN_INVALID_PKCS12</td>
            <td>不合法的 PKCS12 格式</td>
        </tr>
        <tr>
            <td>5050</td>
            <td>CG_RTN_OBJ_NOT_FOUND</td>
            <td>找不到物件</td>
        </tr>
        <tr>
            <td>5051</td>
            <td>CG_RTN_PKCS7_NO_CONTENT</td>
            <td>PKCS7 不存在原文</td>
        </tr>
        <tr>
            <td>5052</td>
            <td>CG_RTN_PKCS7_NO_CERTIFICATE</td>
            <td>PKCS7 不存在憑證</td>
        </tr>
        <tr>
            <td>5053</td>
            <td>CG_RTN_PKCS7_NO_SIGNERINFO</td>
            <td>PKCS7 不存在 SINGERINFO</td>
        </tr>
        <tr>
            <td>5060</td>
            <td>CG_RTN_UNMATCH_CERT_KEY</td>
            <td>錯誤的憑證或金鑰</td>
        </tr>
        <tr>
            <td>5061</td>
            <td>CG_RTN_SIGN_ERROR</td>
            <td>簽章失敗</td>
        </tr>
        <tr>
            <td>5062</td>
            <td>CG_RTN_VERIFY_ERROR</td>
            <td>驗章失敗</td>
        </tr>
        <tr>
            <td>5063</td>
            <td>CG_RTN_ENCRYPT_ERROR</td>
            <td>加密失敗</td>
        </tr>
        <tr>
            <td>5064</td>
            <td>CG_RTN_DECRYPT_ERROR</td>
            <td>解密失敗</td>
        </tr>
        <tr>
            <td>5065</td>
            <td>CG_RTN_GENKEY_ERROR</td>
            <td>產生金鑰失敗</td>
        </tr>
        <tr>
            <td>5066</td>
            <td>CG_RTN_DELETE_USR_CERT_ERROR</td>
            <td>刪除使用者憑證錯誤</td>
        </tr>
        <tr>
            <td>5067</td>
            <td>CG_RTN_BAD_ALGID</td>
            <td>錯誤的演算法</td>
        </tr>
        <tr>
            <td>5070</td>
            <td>CG_RTN_OPERATION_CANCELED</td>
            <td>操作已關閉</td>
        </tr>
        <tr>
            <td>5071</td>
            <td>CG_RTN_PASSWD_INVALID</td>
            <td>密碼錯誤</td>
        </tr>
        <tr>
            <td>5072</td>
            <td>CG_RTN_SCARD_BLOCKED</td>
            <td>卡片鎖卡</td>
        </tr>
        <tr>
            <td>5073</td>
            <td>CG_RTN_REPLUG_TIMEOUT</td>
            <td>拔插逾時</td>
        </tr>
        <tr>
            <td>5074</td>
            <td>CG_RTN_DEVICE_DISABLED</td>
            <td>裝置已停用</td>
        </tr>
        <tr>
            <td>5080</td>
            <td>CG_RTN_XMLPARSE_ERROR</td>
            <td>無法剖析 XML 文件</td>
        </tr>
        <tr>
            <td>5081</td>
            <td>CG_RTN_XMLTAG_NOTFOUND</td>
            <td>無法在 XML 中找到指定的標籤名稱</td>
        </tr>
        <tr>
            <td>5901</td>
            <td>CG_RTN_UNICODE_ERROR</td>
            <td>轉型失敗</td>
        </tr>
        <tr>
            <td>5902</td>
            <td>CG_RTN_FILE_NOT_FOUND</td>
            <td>找不到檔案</td>
        </tr>
        <tr>
            <td>5903</td>
            <td>CG_RTN_PATH_NOT_FOUND</td>
            <td>不存在的路徑</td>
        </tr>
        <tr>
            <td>5904</td>
            <td>CG_RTN_BAD_NETPATH</td>
            <td>不存在的網路路徑</td>
        </tr>
        <tr>
            <td>5905</td>
            <td>CG_RTN_LOGON_FAILURE</td>
            <td>登入失敗</td>
        </tr>
        <tr>
            <td>5906</td>
            <td>CG_RTN_ACCESS_DENIED</td>
            <td>不符權限</td>
        </tr>
        <tr>
            <td>5909</td>
            <td>CG_RTN_BAD_PASSWD</td>
            <td>錯誤的密碼</td>
        </tr>
        <tr>
            <td>5504</td>
            <td>CG_RTN_SOCKET_RECV_ERROR</td>
            <td></td>
        </tr>
        <tr>
            <td>5505</td>
            <td>CG_RTN_SOCKET_CLOSED</td>
            <td></td>
        </tr>
        <tr>
            <td>9001</td>
            <td>CGP11_RTN_CANCEL</td>
            <td>中斷</td>
        </tr>
        <tr>
            <td>9002</td>
            <td>CGP11_RTN_HOST_MEMORY</td>
            <td>記憶體錯誤</td>
        </tr>
        <tr>
            <td>9003</td>
            <td>CGP11_RTN_SLOT_ID_INVALID</td>
            <td>Slot Id 不存在</td>
        </tr>
        <tr>
            <td>9004</td>
            <td>CGP11_RTN_GENERAL_ERROR</td>
            <td>一般錯誤</td>
        </tr>
        <tr>
            <td>9005</td>
            <td>CGP11_RTN_FUNCTION_FAILED</td>
            <td>函數失敗</td>
        </tr>
        <tr>
            <td>9006</td>
            <td>CGP11_RTN_ARGUMENTS_BAD</td>
            <td></td>
        </tr>
        <tr>
            <td>9007</td>
            <td>CGP11_RTN_NO_EVENT</td>
            <td></td>
        </tr>
        <tr>
            <td>9008</td>
            <td>CGP11_RTN_NEED_TO_CREATE_THREADS</td>
            <td></td>
        </tr>
        <tr>
            <td>9009</td>
            <td>CGP11_RTN_CANT_LOCK</td>
            <td></td>
        </tr>
        <tr>
            <td>9010</td>
            <td>CGP11_RTN_ATTRIBUTE_READ_ONLY</td>
            <td></td>
        </tr>
        <tr>
            <td>9011</td>
            <td>CGP11_RTN_ATTRIBUTE_SENSITIVE</td>
            <td></td>
        </tr>
        <tr>
            <td>9012</td>
            <td>CGP11_RTN_ATTRIBUTE_TYPE_INVALID</td>
            <td></td>
        </tr>
        <tr>
            <td>9013</td>
            <td>CGP11_RTN_ATTRIBUTE_VALUE_INVALID</td>
            <td></td>
        </tr>
        <tr>
            <td>9014</td>
            <td>CGP11_RTN_DATA_INVALID</td>
            <td></td>
        </tr>
        <tr>
            <td>9015</td>
            <td>CGP11_RTN_DATA_LEN_RANGE</td>
            <td></td>
        </tr>
        <tr>
            <td>9016</td>
            <td>CGP11_RTN_DEVICE_ERROR</td>
            <td>裝置不存在</td>
        </tr>
        <tr>
            <td>9017</td>
            <td>CGP11_RTN_DEVICE_MEMORY</td>
            <td></td>
        </tr>
        <tr>
            <td>9018</td>
            <td>CGP11_RTN_DEVICE_REMOVED</td>
            <td>裝置已拔除</td>
        </tr>
        <tr>
            <td>9019</td>
            <td>CGP11_RTN_ENCRYPTED_DATA_INVALID</td>
            <td></td>
        </tr>
        <tr>
            <td>9020</td>
            <td>CGP11_RTN_ENCRYPTED_DATA_LEN_RANGE</td>
            <td>被加密資料長度錯誤</td>
        </tr>
        <tr>
            <td>9021</td>
            <td>CGP11_RTN_FUNCTION_CANCELED</td>
            <td></td>
        </tr>
        <tr>
            <td>9022</td>
            <td>CGP11_RTN_FUNCTION_NOT_PARALLEL</td>
            <td></td>
        </tr>
        <tr>
            <td>9023</td>
            <td>CGP11_RTN_FUNCTION_NOT_SUPPORTED</td>
            <td></td>
        </tr>
        <tr>
            <td>9024</td>
            <td>CGP11_RTN_KEY_HANDLE_INVALID</td>
            <td>指定的金鑰不存在</td>
        </tr>
        <tr>
            <td>9025</td>
            <td>FCGP11_RTN_KEY_SIZE_RANGE</td>
            <td></td>
        </tr>
        <tr>
            <td>9026</td>
            <td>CGP11_RTN_KEY_TYPE_INCONSISTENT</td>
            <td></td>
        </tr>
        <tr>
            <td>9027</td>
            <td>CGP11_RTN_KEY_NOT_NEEDED</td>
            <td></td>
        </tr>
        <tr>
            <td>9028</td>
            <td>CGP11_RTN_KEY_CHANGED</td>
            <td></td>
        </tr>
        <tr>
            <td>9029</td>
            <td>CGP11_RTN_KEY_NEEDED</td>
            <td></td>
        </tr>
        <tr>
            <td>9030</td>
            <td>CGP11_RTN_KEY_INDIGESTIBLE</td>
            <td></td>
        </tr>
        <tr>
            <td>9031</td>
            <td>CGP11_RTN_KEY_FUNCTION_NOT_PERMITTED</td>
            <td></td>
        </tr>
        <tr>
            <td>9032</td>
            <td>CGP11_RTN_KEY_NOT_WRAPPABLE</td>
            <td></td>
        </tr>
        <tr>
            <td>9033</td>
            <td>CGP11_RTN_KEY_UNEXTRACTABLE</td>
            <td></td>
        </tr>
        <tr>
            <td>9034</td>
            <td>CGP11_RTN_MECHANISM_INVALID</td>
            <td>指定的機制不存在</td>
        </tr>
        <tr>
            <td>9035</td>
            <td>CGP11_RTN_MECHANISM_PARAM_INVALID</td>
            <td></td>
        </tr>
        <tr>
            <td>9036</td>
            <td>CGP11_RTN_OBJECT_HANDLE_INVALID</td>
            <td>指定的物件不存在</td>
        </tr>
        <tr>
            <td>9037</td>
            <td>CGP11_RTN_OPERATION_ACTIVE</td>
            <td></td>
        </tr>
        <tr>
            <td>9038</td>
            <td>CGP11_RTN_OPERATION_NOT_INITIALIZED</td>
            <td></td>
        </tr>
        <tr>
            <td>9039</td>
            <td>CGP11_RTN_PIN_INCORRECT</td>
            <td>PIN 碼錯誤</td>
        </tr>
        <tr>
            <td>9040</td>
            <td>CGP11_RTN_PIN_INVALID</td>
            <td>Pkcs#11 PIN 碼未設定</td>
        </tr>
        <tr>
            <td>9041</td>
            <td>CGP11_RTN_PIN_LEN_RANGE</td>
            <td>PIN 碼錯誤</td>
        </tr>
        <tr>
            <td>9042</td>
            <td>CGP11_RTN_PIN_EXPIRED</td>
            <td></td>
        </tr>
        <tr>
            <td>9043</td>
            <td>CGP11_RTN_PIN_LOCKED</td>
            <td>PIN 碼錯誤次數超過裝置設定次數</td>
        </tr>
        <tr>
            <td>9044</td>
            <td>CGP11_RTN_SESSION_CLOSED</td>
            <td>與裝置的連線結束</td>
        </tr>
        <tr>
            <td>9045</td>
            <td>CGP11_RTN_SESSION_COUNT</td>
            <td>與裝置的連線次數</td>
        </tr>
        <tr>
            <td>9046</td>
            <td>CGP11_RTN_SESSION_HANDLE_INVALID</td>
            <td>指定的連線不存在</td>
        </tr>
        <tr>
            <td>9047</td>
            <td>CGP11_RTN_SESSION_PARALLEL_NOT_SUPPORTED</td>
            <td></td>
        </tr>
        <tr>
            <td>9048</td>
            <td>CGP11_RTN_SESSION_READ_ONLY</td>
            <td></td>
        </tr>
        <tr>
            <td>9049</td>
            <td>CGP11_RTN_SESSION_EXISTS</td>
            <td>指定的連線已存在</td>
        </tr>
        <tr>
            <td>9050</td>
            <td>CGP11_RTN_SESSION_READ_ONLY_EXISTS</td>
            <td></td>
        </tr>
        <tr>
            <td>9051</td>
            <td>CGP11_RTN_SESSION_READ_WRITE_EXISTS</td>
            <td></td>
        </tr>
        <tr>
            <td>9052</td>
            <td>CGP11_RTN_SIGNATURE_INVALID</td>
            <td></td>
        </tr>
        <tr>
            <td>9053</td>
            <td>CGP11_RTN_SIGNATURE_LEN_RANGE</td>
            <td></td>
        </tr>
        <tr>
            <td>9054</td>
            <td>CGP11_RTN_TEMPLATE_INCOMPLETE</td>
            <td></td>
        </tr>
        <tr>
            <td>9055</td>
            <td>CGP11_RTN_TEMPLATE_INCONSISTENT</td>
            <td></td>
        </tr>
        <tr>
            <td>9056</td>
            <td>CGP11_RTN_TOKEN_NOT_PRESENT</td>
            <td>裝置不存在</td>
        </tr>
        <tr>
            <td>9057</td>
            <td>CGP11_RTN_TOKEN_NOT_RECOGNIZED</td>
            <td></td>
        </tr>
        <tr>
            <td>9058</td>
            <td>CGP11_RTN_TOKEN_WRITE_PROTECTED</td>
            <td>對裝置作寫的動作時所使用的權限錯誤，可能是 SO Pin 錯誤或指定的裝置不可寫入</td>
        </tr>
        <tr>
            <td>9059</td>
            <td>CGP11_RTN_UNWRAPPING_KEY_HANDLE_INVALID</td>
            <td></td>
        </tr>
        <tr>
            <td>9060</td>
            <td>CGP11_RTN_UNWRAPPING_KEY_SIZE_RANGE</td>
            <td></td>
        </tr>
        <tr>
            <td>9061</td>
            <td>CGP11_RTN_UNWRAPPING_KEY_TYPE_INCONSISTENT</td>
            <td></td>
        </tr>
        <tr>
            <td>9062</td>
            <td>CGP11_RTN_USER_ALREADY_LOGGED_IN</td>
            <td>已登入裝置</td>
        </tr>
        <tr>
            <td>9063</td>
            <td>CGP11_RTN_USER_NOT_LOGGED_IN</td>
            <td>未登入裝置</td>
        </tr>
        <tr>
            <td>9064</td>
            <td>CGP11_RTN_USER_PIN_NOT_INITIALIZED</td>
            <td></td>
        </tr>
        <tr>
            <td>9065</td>
            <td>CGP11_RTN_USER_TYPE_INVALID</td>
            <td></td>
        </tr>
        <tr>
            <td>9066</td>
            <td>CGP11_RTN_USER_ANOTHER_ALREADY_LOGGED_IN</td>
            <td></td>
        </tr>
        <tr>
            <td>9067</td>
            <td>CGP11_RTN_USER_TOO_MANY_TYPES</td>
            <td></td>
        </tr>
        <tr>
            <td>9068</td>
            <td>CGP11_RTN_WRAPPED_KEY_INVALID</td>
            <td></td>
        </tr>
        <tr>
            <td>9069</td>
            <td>CGP11_RTN_WRAPPED_KEY_LEN_RANGE</td>
            <td></td>
        </tr>
        <tr>
            <td>9070</td>
            <td>CGP11_RTN_WRAPPING_KEY_HANDLE_INVALID</td>
            <td></td>
        </tr>
        <tr>
            <td>9071</td>
            <td>CGP11_RTN_WRAPPING_KEY_SIZE_RANGE</td>
            <td></td>
        </tr>
        <tr>
            <td>9072</td>
            <td>CGP11_RTN_WRAPPING_KEY_TYPE_INCONSISTENT</td>
            <td></td>
        </tr>
        <tr>
            <td>9073</td>
            <td>CGP11_RTN_RANDOM_SEED_NOT_SUPPORTED</td>
            <td></td>
        </tr>
        <tr>
            <td>9074</td>
            <td>CGP11_RTN_RANDOM_NO_RNG</td>
            <td></td>
        </tr>
        <tr>
            <td>9075</td>
            <td>CGP11_RTN_BUFFER_TOO_SMALL</td>
            <td>緩衝區不夠</td>
        </tr>
        <tr>
            <td>9076</td>
            <td>CGP11_RTN_SAVED_STATE_INVALID</td>
            <td></td>
        </tr>
        <tr>
            <td>9077</td>
            <td>CGP11_RTN_INFORMATION_SENSITIVE</td>
            <td></td>
        </tr>
        <tr>
            <td>9078</td>
            <td>CGP11_RTN_STATE_UNSAVEABLE</td>
            <td></td>
        </tr>
        <tr>
            <td>9079</td>
            <td>CGP11_RTN_CRYPTOKI_NOT_INITIALIZED</td>
            <td></td>
        </tr>
        <tr>
            <td>9080</td>
            <td>CGP11_RTN_CRYPTOKI_ALREADY_INITIALIZED</td>
            <td></td>
        </tr>
        <tr>
            <td>9081</td>
            <td>CGP11_RTN_MUTEX_BAD</td>
            <td></td>
        </tr>
        <tr>
            <td>9082</td>
            <td>CGP11_RTN_MUTEX_NOT_LOCKED</td>
            <td></td>
        </tr>
        <tr>
            <td>9083</td>
            <td>CGP11_RTN_VENDOR_DEFINED</td>
            <td></td>
        </tr>
        <tr>
            <td>9100</td>
            <td>CGP11_RTN_OBJECT_NOT_EXIST</td>
            <td>指定的物件不存在</td>
        </tr>
        <tr>
            <td>9101</td>
            <td>CGP11_RTN_OBJECT_EXIST</td>
            <td>指定的物件已存在</td>
        </tr>
        <tr>
            <td>9102</td>
            <td>CGP11_RTN_OBJECT_HAS_PROBLEM</td>
            <td>裝置中有兩個相同的物件</td>
        </tr>
        <tr>
            <td>9110</td>
            <td>CGP11_RTN_LOAD_LIBRARY_FAIL</td>
            <td></td>
        </tr>
        <tr>
            <td>9111</td>
            <td>CGP11_RTN_LIBRARY_NOT_LOAD</td>
            <td></td>
        </tr>
        <tr>
            <td>9999</td>
            <td>CGP11_RTN_UNKNOW_ERROR</td>
            <td></td>
        </tr>
</table>


### CGVAATL 元件 API
#### VA_ServerAddURL
<table class="grid rwd-table">
    <tr>
        <td colspan="2">VA_ServerAddURL(CGVAAccount, CGVAPass, CGVAURL, LogMsg)</td>
    </tr>
    <tr>
        <th>函式說明</th>
        <td>連接並登入位於 CGVAURL 的 VA Server</td>
    </tr>
    <tr>
        <th>參數</th>
        <td>
            <ul>
                <li>CGVAAccount：有權限使用 VA Server 帳號。</li>
                <li>CGVAPass：VA Server 帳號的密碼。</li>
                <li>CGVAURL：VA Server 位址。</li>
                <li>LogMsg：訊息欄位，用以存放要記錄的訊息（例如IP）或說明資訊。預設值為空字串。</li>
            </ul>
        </td>
    </tr>
    <tr>
        <th>回傳值</th>
        <td>0 代表連線成功，非 0 就代表連線失敗。</td>
    </tr>
    <tr>
        <th>錯誤訊息處理</th>
        <td>失敗，請使用 錯誤! 找不到參照來源。取得系統回傳訊息。</td>
    </tr>
</table>
<br>

#### setRtnFields()

<table class="grid rwd-table">
    <tr>
        <td colspan="2">void setRtnFields(string fields)</td>
    </tr>
    <tr>
        <th>函式說明</th>
        <td>設定要 VA 回傳的參數。</td>
    </tr>
    <tr>
        <th>參數</th>
        <td>fields：要回傳的參數，參數之間用","分隔開。<br>
            可指定下列值 subject, serial, cert, signeddata, userid, issuer, notbefore, notafter, certhash, extraid, cardtype, cardrank, transid, translogid。
        </td>
    </tr>
    <tr>
        <th>回傳值</th>
        <td>無</td>
    </tr>
</table>
<br>

#### VA_VerifySign

<table class="grid rwd-table">
    <tr>
        <td colspan="2">int VA_VerifySign(string sSignature, string sData, int iBinary, int date, string sUserId)</td>
    </tr>
    <tr>
        <th>函式說明</th>
        <td>憑證登入驗章，身份認證程序：<br>
        1. 檢查憑證是否為應用程式認可的 CA 所發行。<br>
        2. 驗證認證訊息的簽章值是否正確。<br>
        3. 驗證 CR Token 是否存在系統中。<br>
        4. 檢查憑證有效性(時間及 CRL)。(option)<br>
        5. 檢查該帳號與憑證是否已在 VA 註冊過。(option)<br>
        6. 儲存登入紀錄(LoginLog) (option)。</td>
    </tr>
    <tr>
        <th>參數</th>
        <td>
            sSignature：簽章值。<br>
            sData：簽章原文。若為空字串，則程式自動驗證簽章內之(字串)原文，並回傳原文。<br>
            iBinary：預設為 0，若為 1 表示原文為二位元資料經 base64 編碼過。<br>
            date：要驗簽章的時間，要驗過往簽章時使用。<br>
            sUserId：使用者 ID。當有些系統必須輸入 ID 來搜尋使用者憑證時使用。
        </td>
    </tr>
    <tr>
        <th>回傳值</th>
        <td>0 成功<br>
        成功後，若有設定 setRtnFields() 回傳值，可使用 VA_GetCert() 取得憑證</td>
    </tr>
    <tr>
        <th>錯誤訊息處理</th>
        <td>若失敗請使用 VA_GetErrorMsg() 取得錯誤訊息</td>
    </tr>
</table>
<br>

#### VA_GetErrorMsg

<table class="grid rwd-table">
    <tr>
        <td colspan="2">string VA_GetErrorMsg(int iType)</td>
    </tr>
    <tr>
        <th>函式說明</th>
        <td>取得系統回傳訊息說明。</td>
    </tr>
    <tr>
        <th>參數</th>
        <td>iType：訊息種類。可不傳此參數，預設值為伺服器訊息。CHINESE_ERROR_MSG：中文訊息，ENGLISH_ERROR_MSG：英文訊息。SERVLET_ERROR_MSG：伺服器訊息（英文）。可用”|” 同時顯示中文訊
息+伺服器訊息，或英文訊息+伺服器訊息。</td>
    </tr>
    <tr>
        <th>回傳值</th>
        <td>訊息說明。</td>
    </tr>
    <tr>
        <th>備註</th>
        <td>必須先使用其他函式成功後，才能使用本函式。</td>
    </tr>
</table>
<br>

#### 錯誤碼列表

<table class="grid rwd-table">
        <tr>
            <th>代碼</th>
            <th>中文訊息</th>
            <th>英文訊息</th>
        </tr>
        <tr>
            <td>0</td>
            <td>成功。</td>
            <td>Success!</td>
        </tr>
        <tr>
            <td>5001</td>
            <td>一般錯誤。</td>
            <td>General error!</td>
        </tr>
        <tr>
            <td>5002</td>
            <td>配置記憶體發生錯誤。</td>
            <td>Memory Allocation Error!</td>
        </tr>
        <tr>
            <td>5003</td>
            <td>記憶體緩衝區太小。</td>
            <td>Buffer too small.</td>
        </tr>
        <tr>
            <td>5004</td>
            <td>未支援函式。</td>
            <td>Function not support.</td>
        </tr>
        <tr>
            <td>5005</td>
            <td>錯誤的參數。</td>
            <td>Invalid parameter!</td>
        </tr>
        <tr>
            <td>5006</td>
            <td>無效的 handle。</td>
            <td>Invalid handle</td>
        </tr>
        <tr>
            <td>5007</td>
            <td>試用版期限已過。</td>
            <td>TrialVersion Library is expired!</td>
        </tr>
        <tr>
            <td>5008</td>
            <td>Base64 編碼錯誤。</td>
            <td>Base64 Encoding Error</td>
        </tr>
        <tr>
            <td>5010</td>
            <td>無法在 MS CryptoAPI Database 中找到指定憑證。</td>
            <td>Certificate not found in MS CryptoAPI Database!</td>
        </tr>
        <tr>
            <td>5011</td>
            <td>憑證已過期。</td>
            <td>Certificate is expired!</td>
        </tr>
        <tr>
            <td>5012</td>
            <td>憑證尚未合法，無法使用。</td>
            <td>Certificate can not be used now!</td>
        </tr>
        <tr>
            <td>5013</td>
            <td>憑證可能過期或無法使用。</td>
            <td>Some certificates are expired, some can not be used now!</td>
        </tr>
        <tr>
            <td>5014</td>
            <td>憑證主旨錯誤。</td>
            <td>Certificate subject not match!</td>
        </tr>
        <tr>
            <td>5015</td>
            <td>無法找到憑證發行者。</td>
            <td>Unable to find certificate issuer!</td>
        </tr>
        <tr>
            <td>5016</td>
            <td>不合法的憑證簽章。</td>
            <td>Certificate signature is invalid!</td>
        </tr>
        <tr>
            <td>5017</td>
            <td>憑證用途（加解密或簽驗章）不合適。</td>
            <td>Invalid certificate key usage!</td>
        </tr>
        <tr>
            <td>5020</td>
            <td>憑證已撤銷。</td>
            <td>Certificate is revoked!</td>
        </tr>
        <tr>
            <td>5021</td>
            <td>憑證已撤銷（金鑰洩露）。</td>
            <td>Certificate is revoked (key compromised)</td>
        </tr>
        <tr>
            <td>5022</td>
            <td>憑證已撤銷（CA compromised）。</td>
            <td>Certificate is revoked (CA compromised)</td>
        </tr>
        <tr>
            <td>5023</td>
            <td>憑證已撤銷（聯盟已變更）。</td>
            <td>Certificate is revoked (affiliation changed)</td>
        </tr>
        <tr>
            <td>5024</td>
            <td>憑證已撤銷（已取代）。</td>
            <td>Certificate is revoked (superseded)</td>
        </tr>
        <tr>
            <td>5025</td>
            <td>憑證已撤銷（已停止）。</td>
            <td>Certificate is revoked (cessation)</td>
        </tr>
        <tr>
            <td>5026</td>
            <td>憑證保留或暫禁。</td>
            <td>Certificate is revoked (hold)</td>
        </tr>
        <tr>
            <td>5028</td>
            <td>憑證己撤銷（凍結）。</td>
            <td>Certificate is revoked (hold)</td>
        </tr>
        <tr>
            <td>5030</td>
            <td>CRL 已過期。</td>
            <td>CRL expired</td>
        </tr>
        <tr>
            <td>5031</td>
            <td>不合法的 CRL。</td>
            <td>CRL not yet valid</td>
        </tr>
        <tr>
            <td>5032</td>
            <td>無法找到 CRL。</td>
            <td>CRL not found</td>
        </tr>
        <tr>
            <td>5034</td>
            <td>CRL 簽章值無效。</td>
            <td>CRL signature invalid</td>
        </tr>
        <tr>
            <td>5035</td>
            <td>Digest 錯誤。</td>
            <td>Get Digest error</td>
        </tr>
        <tr>
            <td>5036</td>
            <td>不合法的簽章。</td>
            <td>Invalid data signature</td>
        </tr>
        <tr>
            <td>5037</td>
            <td>內容錯誤。</td>
            <td>Content not match</td>
        </tr>
        <tr>
            <td>5040</td>
            <td>憑證格式錯誤。</td>
            <td>Incorrect Certificate format</td>
        </tr>
        <tr>
            <td>5041</td>
            <td>CRL 格式錯誤。</td>
            <td>Incorrect CRL format</td>
        </tr>
        <tr>
            <td>5042</td>
            <td>錯誤的 PKCS7 格式。</td>
            <td>Incorrect PKCS7</td>
        </tr>
        <tr>
            <td>5043</td>
            <td>Key 的格式錯誤。</td>
            <td>Incorrect KEY format</td>
        </tr>
        <tr>
            <td>5044</td>
            <td>不合法的 PKCS10 格式。</td>
            <td>Incorrect PKCS10</td>
        </tr>
        <tr>
            <td>5045</td>
            <td>無效的格式。</td>
            <td>Incorrect format</td>
        </tr>
        <tr>
            <td>5046</td>
            <td>無效的 PKCS12。</td>
            <td>Invalid PKCS12</td>
        </tr>
        <tr>
            <td>5050</td>
            <td>找不到物件。</td>
            <td>Object No found</td>
        </tr>
        <tr>
            <td>5051</td>
            <td>無內容於 PKCS7 資料中。</td>
            <td>(PKCS7) No content</td>
        </tr>
        <tr>
            <td>5052</td>
            <td>無憑證於 PKCS7 資料中。</td>
            <td>(PKCS7) No certificate</td>
        </tr>
        <tr>
            <td>5053</td>
            <td>無簽章資料於 PKCS7 資料中。</td>
            <td>(PKCS7) No signerinfo</td>
        </tr>
        <tr>
            <td>5060</td>
            <td>錯誤的憑證或金鑰。</td>
            <td>Certificate/PrivateKey not match</td>
        </tr>
        <tr>
            <td>5061</td>
            <td>簽章失敗。</td>
            <td>Sign error</td>
        </tr>
        <tr>
            <td>5062</td>
            <td>驗章失敗。</td>
            <td>Verify error</td>
        </tr>
        <tr>
            <td>5063</td>
            <td>加密失敗。</td>
            <td>Encrypt error</td>
        </tr>
        <tr>
            <td>5064</td>
            <td>解密失敗。</td>
            <td>Decrypt error</td>
        </tr>
        <tr>
            <td>5065</td>
            <td>產生金鑰失敗。</td>
            <td>Generate key error</td>
        </tr>
        <tr>
            <td>5070</td>
            <td>取消操作。</td>
            <td>Operation Cancel</td>
        </tr>
        <tr>
            <td>5071</td>
            <td>密碼不正確。</td>
            <td>Password Invalid</td>
        </tr>
        <tr>
            <td>5080</td>
            <td>無法剖析 XML 文件。</td>
            <td>(XML) Parse error</td>
        </tr>
        <tr>
            <td>5081</td>
            <td>無法在 XML 中，找到指定的標籤名稱。</td>
            <td>(XML) Tag not found</td>
        </tr>
        <tr>
            <td>5100</td>
            <td>無效狀態。</td>
            <td>Invalid State</td>
        </tr>
        <tr>
            <td>5101</td>
            <td>超出範圍。</td>
            <td>Out Of Range</td>
        </tr>
        <tr>
            <td>5201</td>
            <td>開啟 store 錯誤。</td>
            <td>Open store error</td>
        </tr>
        <tr>
            <td>5202</td>
            <td>產生 chain 錯誤。</td>
            <td>Create chain error</td>
        </tr>
        <tr>
            <td>5203</td>
            <td>Crypt context 錯誤。</td>
            <td>Crypt context error</td>
        </tr>
        <tr>
            <td>5204</td>
            <td>沒有私密金鑰。</td>
            <td>no private key</td>
        </tr>
  <tr>
    <td>5205</td>
    <td>不可匯出。</td>
    <td>unexportable</td>
  </tr>
  <tr>
    <td>5206</td>
    <td>不可存取 store。</td>
    <td>Store accessdeny</td>
  </tr>
  <tr>
    <td>5401</td>
    <td>CRL 沒有發行者。</td>
    <td>CRL no issure</td>
  </tr>
  <tr>
    <td>5410</td>
    <td>OCSP 沒有簽章值。</td>
    <td>OCSP no signature</td>
  </tr>
  <tr>
    <td>5411</td>
    <td>OCSP 沒有簽署者憑證。</td>
    <td>OCSP no signcert</td>
  </tr>
  <tr>
    <td>5412</td>
    <td>OCSP 沒有原始資料。</td>
    <td>OCSP no data</td>
  </tr>
  <tr>
    <td>5413</td>
    <td>不支援的 OCSP 回應。</td>
    <td>unsupport response</td>
  </tr>
  <tr>
    <td>5414</td>
    <td>無效的 OCSP 回應。</td>
    <td>OCSP invalid response</td>
  </tr>
  <tr>
    <td>5415</td>
    <td>沒有對應的 OCSP 憑證編號。</td>
    <td>OCSP no match certid</td>
  </tr>
  <tr>
    <td>5416</td>
    <td>未知的 OCSP 憑證狀態。</td>
    <td>OCSP cert status unknown</td>
  </tr>
  <tr>
    <td>5417</td>
    <td>無效的 OCSP 回應編號。</td>
    <td>OCSP invalid respid</td>
  </tr>
  <tr>
    <td>5418</td>
    <td>無效的 OCSP 回應。</td>
    <td>OCSP invalid respnonce</td>
  </tr>
  <tr>
    <td>5420</td>
    <td>無效的 OCSP 請求。</td>
    <td>OCSP rspstatus invalid request</td>
  </tr>
  <tr>
    <td>5421</td>
    <td>OCSP 內部錯誤。</td>
    <td>OCSP rspstatus internal error</td>
  </tr>
  <tr>
    <td>5422</td>
    <td>OCSP 忙碌中，請稍後重試。</td>
    <td>OCSP rspstatus trylater</td>
  </tr>
  <tr>
    <td>5423</td>
    <td>OCSP 請求需要簽章。</td>
    <td>OCSP rspstatus sigrequired</td>
  </tr>
  <tr>
    <td>5424</td>
    <td>未被授權的 OCSP 請求。</td>
    <td>OCSP rspstatus unauthorized</td>
  </tr>
  <tr>
    <td>5425</td>
    <td>未知的 OCSP 狀態。</td>
    <td>OCSP rspstatus unknown</td>
  </tr>
  <tr>
    <td>5500</td>
    <td>Socket 錯誤。</td>
    <td>Socket error</td>
  </tr>
  <tr>
    <td>5501</td>
    <td>Socket 未知的主機。</td>
    <td>Socket unkown host</td>
  </tr>
  <tr>
    <td>5502</td>
    <td>Socket 連結錯誤。</td>
    <td>Socket connect error</td>
  </tr>
  <tr>
    <td>5503</td>
    <td>Socket 傳送錯誤。</td>
    <td>Socket send error</td>
  </tr>
  <tr>
    <td>5504</td>
    <td>Socket 接收錯誤。</td>
    <td>Socket recv error</td>
  </tr>
  <tr>
    <td>5505</td>
    <td>Socket 已關閉。</td>
    <td>Socket closed</td>
  </tr>
  <tr>
    <td>7706</td>
    <td>XML 簽章值錯誤。</td>
    <td>Incorrect xml signature</td>
  </tr>
  <tr>
    <td>7707</td>
    <td>XML 指定參考的摘要值錯誤。</td>
    <td>Incorrect xml referenceTs digest value</td>
  </tr>
  <tr>
    <td>7711</td>
    <td>無法找到此 ID 所指的 XML 簽章, ID 錯誤或 XML 簽章不存在。</td>
    <td>CanTt find XMLSignature with this ID</td>
  </tr>
  <tr>
    <td>7712</td>
    <td>解析 XML 文件時發生錯誤。</td>
    <td>Parse xml document error</td>
  </tr>
  <tr>
    <td>7713</td>
    <td>URI 所指向的文件不存在或為空值。</td>
    <td>Specified uri is not existed</td>
  </tr>
  <tr>
    <td>7716</td>
    <td>XML 參數不正確。</td>
    <td>XML Incorrect parameter</td>
  </tr>
  <tr>
    <td>26004</td>
    <td>送至 Servlet 的參數缺少或不正確。</td>
    <td>Illeagle argument</td>
  </tr>
  <tr>
    <td>26006</td>
    <td>Servlet 無法連結。</td>
    <td>Unable to connect to Servlet</td>
  </tr>
  <tr>
    <td>26008</td>
    <td>Servlet 沒有回傳任何資料。</td>
    <td>Servlet returns no data</td>
  </tr>
  <tr>
    <td>26007</td>
    <td>Servlet 回傳資料型態或回傳格式錯誤。</td>
    <td>Servlet returns invalid data/type/format</td>
  </tr>
  <tr>
    <td>66001</td>
    <td>一般性錯誤。</td>
    <td>General Error</td>
  </tr>
  <tr>
    <td>66003</td>
    <td>不合法的參數。</td>
    <td>ILLEGALE ARGUMENT</td>
  </tr>
  <tr>
    <td>66007</td>
    <td>應用程式無法使用此函式。</td>
    <td>User has no permission of this function.</td>
  </tr>
  <tr>
    <td>66008</td>
    <td>簽章原文已過期, 請重整網頁以取得新的簽章原文。</td>
    <td>Challenge-Response token expired</td>
  </tr>
  <tr>
    <td>66101</td>
    <td>Servlet 服務已經啟動，正常執行中。</td>
    <td>Servlet already running</td>
  </tr>
  <tr>
    <td>66102</td>
    <td>Servlet 服務未啟動。</td>
    <td>Servlet not start</td>
  </tr>
  <tr>
    <td>66105</td>
    <td>使用者的密碼不正確。</td>
    <td>User password not correct</td>
  </tr>
  <tr>
    <td>66201</td>
    <td>使用者的帳號已刪除。</td>
    <td>User account is deleted</td>
  </tr>
  <tr>
    <td>66202</td>
    <td>登入失敗次數太多，使用者的帳號已凍結。</td>
    <td>User account is freezed</td>
  </tr>
  <tr>
    <td>66203</td>
    <td>使用者的帳號不存在</td>
    <td>User acount not exit</td>
  </tr>
  <tr>
    <td>66204</td>
    <td>帳號已存在。</td>
    <td>ACCOUNT_ALREADY_EXIST</td>
  </tr>
  <tr>
    <td>66205</td>
    <td>使用者未登入。</td>
    <td>User not login</td>
  </tr>
  <tr>
    <td>66216</td>
    <td>未信任的 CA，請將該 CA 加入信任清單中。</td>
    <td>Untrusted CA, add this CA to the trusted list</td>
  </tr>
  <tr>
    <td>66302</td>
    <td>請求服務的 IP 未被授權。</td>
    <td>Unallowed IP</td>
  </tr>
  <tr>
    <td>66303</td>
    <td>請求服務的 IP 未被授權。</td>
    <td>Unallowed IP</td>
  </tr>
  <tr>
    <td>66306</td>
    <td>序號控管錯誤。</td>
    <td>Sequence check fail</td>
  </tr>
  <tr>
    <td>66315</td>
    <td>備份檔的設定無效。</td>
    <td>Backup setting is invalid</td>
  </tr>
  <tr>
    <td>66401</td>
    <td>連結資料庫失敗。</td>
    <td>DATABASE_FAIL</td>
  </tr>
  <tr>
    <td>66402</td>
    <td>資料庫內沒有找到符合的使用者資料。</td>
    <td>No user data in database</td>
  </tr>
  <tr>
    <td>66501</td>
    <td>憑證已過期或憑證已註銷</td>
    <td>CERT_STATE_EXPIRED</td>
  </tr>
  <tr>
    <td>66503</td>
    <td>憑證己撤銷。</td>
    <td>Certificate is revoked</td>
  </tr>
  <tr>
    <td>66504</td>
    <td>憑證撤銷中。</td>
    <td>Certificate is revoking</td>
  </tr>
  <tr>
    <td>66505</td>
    <td>憑證己暫禁。</td>
    <td>Certificate is suspended</td>
  </tr>
  <tr>
    <td>66506</td>
    <td>憑證暫禁中。</td>
    <td>Certificate is suspending</td>
  </tr>
  <tr>
    <td>66513</td>
    <td>無效憑證的狀態。</td>
    <td>Invalid certificate state</td>
  </tr>
  <tr>
    <td>66520</td>
    <td>憑證的格式錯誤。</td>
    <td>Invalid certificate</td>
  </tr>
  <tr>
    <td>66521</td>
    <td>該憑證不存在系統中。</td>
    <td>certificate is not exist in system</td>
  </tr>
  <tr>
    <td>66522</td>
    <td>憑證簽章有問題。</td>
    <td>CERT_BAD_SIGNATURE</td>
  </tr>
  <tr>
    <td>66601</td>
    <td>回傳訊息格式錯誤。</td>
    <td>Return MSG FORMAT ERROR</td>
  </tr>
<tr>
    <td>66710</td>
    <td>PKCS7 格式錯誤。</td>
    <td>PKCS7_FORMAT_ERROR</td>
  </tr>
  <tr>
    <td>66720</td>
    <td>簽章原文錯誤。</td>
    <td>VERIFY_BAD_CONTENT</td>
  </tr>
  <tr>
    <td>66725</td>
    <td>無法找到對應的金鑰。</td>
    <td>UNMATCH_CERT_PRIKEY</td>
  </tr>
  <tr>
    <td>66801</td>
    <td>此憑證未登記於該使用者 ID。</td>
    <td>This Certificate is not registered with this UserID</td>
  </tr>
  <tr>
    <td>66802</td>
    <td>此憑證已登記於其他使用者 ID。</td>
    <td>The Certificate was registered with other UserID</td>
  </tr>
  <tr>
    <td>66804</td>
    <td>憑證已存在。</td>
    <td>Certificate is exist</td>
  </tr>
</table>
<br>

### 檢驗機構端程式

```
//CGP11 元件初始
objCGP11CryptATL = new CGP11CryptATLLib.CGP11Crypt();
//解析軟憑pfx檔案
int iRtn = objCGP11CryptATL.CryptParsePKCS12(textPfxFilePath.Text, textPfxPassword.Text, textPfxPassword.Tesxt);
//檢查憑證有效性
if (iRtn == 0)
{
  //取得憑證
  sCert = objCGP11CryptATL.GetRtnCertificate();
  HospitalSignatureTextBoxText = sCert;
  //取得數位簽章值
  int CG_FLAG_DETACHMSG = 0x00004000;
  int CG_KU_NON_REPUDIATION = 0x0040;
  int CG_ALGOR_SHA256 = 0x04;
  signature = objCGP11CryptATL.P12Sign(textPfxFilePath.Text, textPfxPassword.Text, DownloadtextBox.Text, CG_FLAG_DETACHMSG, CG_KU_NON_REPUDIATION, CG_ALGOR_SHA256);
  //取得軟憑的私鑰
  sPrivateKey = objCGP11CryptATL.GetRtnPrivateKey(); 
  //使用憑證加密資料
  int CG_ALGOR_AES_256 = 0x07;
  encryptDownloadTextBox.Text = objCGP11CryptATL.CryptCertEncrypt(sCert, DownloadtextBox.Text, CG_ALGOR_AES_256, 0);
}  

署端
va = new CGVAATLLib.VAATLClass();
//CGP11 元件初始
objCGP11CryptATL = new CGP11CryptATLLib.CGP11Crypt();
//連接認證伺服器
            int rtn = va.VA_ServerAddURL(CGVAAccount, CGVAPass, CGVAURL, "SoftwareCert API Login");
//取得憑證的檢驗機構代碼
va.setRtnFields("cert");
rtn = va.VA_VerifySign(sCert, "", 0, 0, "");
HospitalCertTextBox.Text = va.VA_GetCert();
hospitalCodetextBox.Text = objCGP11CryptATL.CGCrypt_CertGetSubjectDirectoryAttrs(sCert, "2.16.886.1.100.2.111", 0);
//取得錯誤訊息
msg = va.VA_GetErrorMsg(va.CG_CHINESE_ERROR_MSG() | va.CG_SERVLET_ERROR_MSG());
//解密資料
//設定codepage
//objCGP11CryptATL.SetCodePage(65001);
objCGP11CryptATL.SetCodePage(950);
decryptTextBox.Text = objCGP11CryptATL.CryptCertDecrypt(sCert, sPrivateKey, textPfxPassword.Text, encryptDownloadTextBox2.Text, 0, 0);
int rtn = objCGP11CryptATL.GetErrorCode();

//使用憑證加密資料
int CG_ALGOR_AES_256 = 0x07;
encryptDownloadTextBox.Text = objCGP11CryptATL.CryptCertEncrypt(sCert, DownloadtextBox.Text, CG_ALGOR_AES_256, 0);

檢驗機構端解密收到資料
//設定codepage
//objCGP11CryptATL.SetCodePage(65001);
objCGP11CryptATL.SetCodePage(950);
decryptTextBox.Text = objCGP11CryptATL.CryptCertDecrypt(sCert, sPrivateKey, textPfxPassword.Text, encryptDownloadTextBox2.Text, 0, 0);

int rtn = objCGP11CryptATL.GetErrorCode();
  
```      