@AbapCatalog.sqlViewName: 'IDATEFUNCTIONVAL'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Date Function values'
@ObjectModel.representativeKey: 'DateFunction'
@ObjectModel.usageType.dataClass: #META
@ObjectModel.usageType.serviceQuality:  #A
@ObjectModel.usageType.sizeCategory:  #S
@ClientHandling.algorithm: #SESSION_VARIABLE
@Analytics: { dataCategory: #DIMENSION, dataExtraction.enabled: true }
@VDM.viewType: #BASIC
define view I_DateFunctionValue
  as select from datefunction_val

  association [1..1] to I_Datefunction as _Datefunction on _Datefunction.DateFunction = datefunction_val.datefunction

{
  key DateFunction,
  key DateFunctionValidityDate,
      DateFunctionStartDate,
      DateFunctionEndDate
}