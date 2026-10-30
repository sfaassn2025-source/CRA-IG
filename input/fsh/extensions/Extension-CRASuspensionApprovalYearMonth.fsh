Extension: CRASuspensionApprovalYearMonth
Id: cra-suspension-approval-year-month
Title: "核停年月"
Description: "記錄自該年月起停止領取未滿兩歲兒童育兒津貼的核停年月。此日期可使用 YYYY-MM 精度。"
Context: ClaimResponse
* ^version = "0.0.1"
* value[x] only date
* valueDate 1..1 MS
