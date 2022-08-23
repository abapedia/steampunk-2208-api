@AbapCatalog.sqlViewName: 'IADMANAGEURITYPE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Address Management URI Type'
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.representativeKey: 'AddressManagementURIType'
@ObjectModel.sapObjectNodeType.name: 'AddressManagementURIType'
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@VDM.viewType: #BASIC
define view I_AddressManagementURIType
  as select from dd07l
  association [0..*] to I_AddressManagementURITypeText as _Text on $projection.AddressManagementURIType = _Text.AddressManagementURIType
{
  key AddressManagementURIType,
      DomainValue
}