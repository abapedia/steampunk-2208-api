@AbapCatalog.sqlViewName: 'CGCALDFVH'
@AbapCatalog.compiler.compareFilter: true
@EndUserText.label: 'Value Help for Gregorian Calendar Date Functions'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.usageType.dataClass: #TRANSACTIONAL
@ObjectModel.usageType.serviceQuality:  #C
@ObjectModel.usageType.sizeCategory:  #S
@ObjectModel.dataCategory: #VALUE_HELP
@ClientHandling.algorithm: #SESSION_VARIABLE
@VDM.viewType: #CONSUMPTION 
@Search.searchable: true
@Consumption.ranked: true

define view C_GregorianCalDateFuncVH as select from I_DateFunctionValue {
  key DateFunction,
      DateFunctionName,
      DateFunctionDescription,
      DateFunctionStartDate,
      DateFunctionEndDate
}