Profile: CoverageCRA
Parent: CoverageTWSSBase
Id: Coverage-cra
Title: "育兒津貼資格-Coverage CRA"
Description: "此 Profile 繼承補助資格或補助案件-Coverage TWSS Base Profile，表達受補助兒童與育兒津貼給付單位間的補助資格關係。"

* beneficiary only Reference(PatientCRA)
* payor 1..1
* payor only Reference(OrganizationTWSSBase)
* payor ^short = "育兒津貼給付單位（衛生福利部社會及家庭署）"
