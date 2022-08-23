@AbapCatalog.sqlViewName: 'IADDRSCRPTTXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'AddressRepresentationCode'
@ObjectModel.dataCategory: #TEXT
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #X
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Description of language scripts'
define view I_AddressRepresentationText
  as select from tsadvt
{
  key Language,
  key AddressRepresentationCode,
      AddressRepresentationDesc
}