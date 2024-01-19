%dw 2.0
import * from dw::core::Strings
output application/json
---
[{
  "dataFlow": "stock-codes-batch",
  "errorText": ("Error Text :" ++ error.errorType.asString as String ++ ", Offset:" ++ vars.initialPayload.offset ++ " Limit: " ++ vars.initialPayload.limit ) as String,
  "errorDetails": error.description,
  "payload": write(payload.erroritems, "application/json") as String,
  "retryCount": 0,
  "retryFlag": false,
  "sourceSystem": "Dimension",
  "status": "Retry",
  "targetSystem": "Salesforce"
}]
