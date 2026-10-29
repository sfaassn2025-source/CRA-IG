Profile:        PatientCRA
Parent:         PatientTWSSBase
Id:             Patient-cra
Title:          "個案資訊-Patient CRA"
Description:    "此個案資訊-Patient CRA Profile 繼承個案資料-Patient TWSS Base Profile，以呈現未滿兩歲育兒津貼服務交換所需的兒童個案基本資料。"

* name[usual] 0..1 MS
* name[usual].text 0..1 MS
* birthDate 0..1 MS
* address.district 0..1 MS

* identifier[idCardNumber] 1..1 MS
* identifier[idCardNumber] ^short = "受補助人身分證號"
* name ^short = "受補助人姓名"
* birthDate ^short = "受補助人生日"
* address.district ^short = "縣市"
