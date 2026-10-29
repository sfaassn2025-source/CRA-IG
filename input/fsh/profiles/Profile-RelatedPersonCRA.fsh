Profile: RelatedPersonCRA
Parent: RelatedPersonTWSSBase
Id: RelatedPerson-cra
Title: "育兒津貼關係人-RelatedPerson CRA"
Description: "此 Profile 繼承關係人資料-RelatedPerson TWSS Base Profile，表達育兒津貼申請資料中的關係人基本識別資料。"

* patient only Reference(PatientCRA)
* identifier ^short = "關係人身分識別碼"
* name ^short = "關係人姓名"
* identifier[relationNumber] ^short = "關係人編號（TWSS Base 必填技術識別碼）"
* identifier[relationNumber] ^definition = "關係人編號為 TWSS Base RelatedPerson Profile 的必填技術識別碼，非育兒津貼交換欄位；來源系統應提供或建立同一關係人可穩定重複使用的識別值。"
