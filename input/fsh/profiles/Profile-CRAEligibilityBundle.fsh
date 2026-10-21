Profile: CRAEligibilityBundle
Parent: Bundle
Id: Bundle-cra-eligibility
Title: "育兒津貼資格交換-Bundle CRA"
Description: "此 Profile 表達未滿兩歲育兒津貼資訊系統每日提供予托育服務整合資訊系統的育兒津貼資格資料集合。每個 Bundle 以 collection 方式承載兒童個案、關係人、申請及核定資格資料。"

* type = #collection
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS
// Each entry carries an independently profiled CRA or TWSS Base resource.
// Resource-specific conformance is asserted by its own meta.profile.
* entry.resource 1..1 MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains patient 1..1 MS
    and relatedPerson 0..2 MS
    and insurer 1..1 MS
    and coverage 1..1 MS
    and claim 1..1 MS
    and claimResponse 1..1 MS
* entry[patient].resource only PatientCRA
* entry[relatedPerson].resource only RelatedPersonCRA
* entry[insurer].resource only OrganizationTWSSBase
* entry[coverage].resource only CoverageCRA
* entry[claim].resource only ClaimCRA
* entry[claimResponse].resource only ClaimResponseCRA
