%dw 2.0
import * from dw::core::Strings
output application/json
var papiErrors = if(payload != null and payload.errorCount != null and payload.errorCount > 0) payload.errorItems map ((item, index) -> {
	"errorDetails": item.errorMessage,
  "dataFlow": "cnb-contracts-batch",
  "errorText": item.errorMessage,
  "payload": write(item.payload, "application/json"),
  "retryCount": 0,
  "retryFlag": false,
  "sourceSystem": "CNB",
  "status": "Retry",
  "targetSystem": "SALESFORCE"
}) else []
---
flatten(papiErrors)