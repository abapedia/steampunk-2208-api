@AbapCatalog.sqlViewName: 'IADDRSCRPT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #X
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.resultSet.sizeCategory: #XS
@ObjectModel.representativeKey: 'AddressRepresentationCode'
@ObjectModel.sapObjectNodeType.name: 'AddressRepresentationCode'
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Represented names of language scripts'
define view I_AddressRepresentation
  as select from tsadv
  association [0..*] to I_AddressRepresentationText as _Text on $projection.AddressRepresentationCode = _Text.AddressRepresentationCode
{
  key AddressRepresentationCode
}