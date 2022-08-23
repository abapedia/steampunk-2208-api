@AbapCatalog.sqlViewName: 'ISGLGCALDF'
@AbapCatalog.compiler.compareFilter: true
@EndUserText.label: 'Execute Single Function'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.usageType.dataClass: #TRANSACTIONAL
@ObjectModel.usageType.serviceQuality:  #C
@ObjectModel.usageType.sizeCategory:  #S
@ClientHandling.algorithm: #SESSION_VARIABLE
@VDM.viewType: #COMPOSITE
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@Metadata.ignorePropagatedAnnotations:true

define view I_SglGregorianCalDateFunction
  with parameters
    P_DateFunction : datefunctionid
  as select from I_DateFunctionValue
  association [1] to I_DateFunctionValue      as SystemDateFunctionValue on SystemDateFunctionValue.DateFunctionValidityDate = $session.system_date 
  and SystemDateFunctionValue.DateFunction = $parameters.P_DateFunction
{
  key DateFunction,
      DateFunctionStartDate,
      DateFunctionEndDate,
      DateFunctionStartDateTime,
      DateFunctionEndDateTime
}