@AbapCatalog.sqlViewName: 'CGCALSGLDFVH'
@AbapCatalog.compiler.compareFilter: true
@EndUserText.label: 'Value Help for Single Gregorian Calendar Date Functions'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.usageType.dataClass: #TRANSACTIONAL
@ObjectModel.usageType.serviceQuality:  #C
@ObjectModel.usageType.sizeCategory:  #S
@ObjectModel.dataCategory: #VALUE_HELP
@ClientHandling.algorithm: #SESSION_VARIABLE
@VDM.viewType: #CONSUMPTION 
@Search.searchable: true

define view C_GregorianCalSglDateFuncVH as select from I_DateFunctionValue {
  key DateFunction,
      DateFunctionName,
      DateFunctionDescription,
      DateFunctionStartDate,
      DateFunctionEndDate
}