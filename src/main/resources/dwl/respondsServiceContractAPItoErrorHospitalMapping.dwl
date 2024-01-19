%dw 2.0
import * from dw::core::Strings
output application/json
---
[{
  "dataFlow": "stock-codes-batch",
  "errorText": ("Stock Code Updated With Errors on Query with " ++ ", Offset:" ++ vars.initialPayload.offset ++ " Limit: " ++ vars.initialPayload.limit ) as String,
  "errorDetails": "Failed to Update Records",
  "payload": write(vars.serviceContractResponse.errorItems, "application/json") as String,
  "retryCount": 0,
  "retryFlag": false,
  "sourceSystem": "Dimension",
  "status": "Retry",
  "targetSystem": "Salesforce"
}]
