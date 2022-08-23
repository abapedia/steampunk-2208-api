@AbapCatalog.sqlViewName: 'IBPUEXTERNALID'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Business Partner External ID (Business User Management)'
@VDM.viewType: #BASIC
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #L
@ObjectModel.usageType.dataClass: #MASTER
@ClientHandling.algorithm: #SESSION_VARIABLE
@AccessControl.personalData.blocking: #BLOCKED_DATA_EXCLUDED
define view I_BPUsrExternalID as select from but0id 
  association [0..1] to I_BusinessUserBasic as _BusinessUserBasic on $projection.BusinessPartner = _BusinessUserBasic.BusinessPartner
{
  key BusinessPartner,
  key BPIdentificationType,
  key BPIdentificationNumber,
      ValidityStartDate,
      ValidityEndDate
}