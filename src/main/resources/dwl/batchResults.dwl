%dw 2.0
output application/json
---
{
	startTime: vars.startTime,
	endTime: now(),
	executionTime: now() - vars.startTime,
	totalRecordsCount: vars.totalRecords,
	batchSize: vars.limit
}