@AbapCatalog.sqlViewName: 'INAMESUPPLEMENT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Name Supplement'
@ObjectModel.representativeKey: 'PersonNameSupplementCode'
@ObjectModel.sapObjectNodeType.name: 'PersonNameSupplementCode'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@VDM.viewType: #BASIC
define view I_NameSupplement
  as select from tsad5
  association [0..*] to I_NameSupplementText as _Text on $projection.PersonNameSupplementCode = _Text.PersonNameSupplementCode
{
  key PersonNameSupplementCode,
      NameSupplement
}