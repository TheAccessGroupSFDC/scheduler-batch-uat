output application/json skipNullOn="everywhere"
%dw 2.0
import * from dw::core::Strings
output application/json
---
vars.queryResponse map ((item, index) ->{ 
  "code": item.stkCode,
  "codeUID": item.stockID,
  "productCode": item.productNumber  ,
  "planProductNumber": item.planProductNumber ,
  "stksk": item.STK_SK,
  "planType": capitalize(item.planType) ,
  "panLevel": capitalize(item.planLevel) ,
  "inactive": if(item.Inactive == 1) true else false ,
  "name": item.stkname,
  "deploymentCode": item.Deployment_Code ,
  "deploymentName": item.Deployment_Name ,
  "divisionCode": item.Division_Code ,
  "divisionName": item.Division_Name ,
  "doNotUse": if(item.DoNotUse == 1) true else false ,
  "excludeInCSP": if(item.ExcludeinCSP == 1) true else false ,
  "investmentCode": item.Investment_Code ,
  "investmentName": item.Investment_Name ,
  "nominalCode": item.Nominal_Code ,
  "nominalName": item.Nominal_Name ,
  "productDevCode": item.Product_Dev_Code ,
  "productDevName": item.Product_Dev_Name ,
  "productName": item.Product_Name ,
  "region": item.Region,
  "renewalHoldCode": item.Renewal_Hold_Code,
  "renewalHoldName": item.Renewal_Hold_Name,
  "stockPrimary": item.StkPrimary as String ,
  "stockType": item.StkType,
  "stockProductName": item.StkProduct_Name,
  "subDivisionCode": item.SubDivision_Code,
  "subDivisionName": item.SubDivision_Name 
} )