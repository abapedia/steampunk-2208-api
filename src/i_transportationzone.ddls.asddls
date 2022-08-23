@AbapCatalog.sqlViewName: 'ITRANSPORTZONE'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@VDM.viewType: #BASIC
@AbapCatalog.preserveKey:true
@ObjectModel.representativeKey: 'TransportZone'
@ObjectModel.sapObjectNodeType.name: 'TransportZone'
@Search.searchable: true
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@EndUserText.label: 'Transportation Zone'
define view I_TransportationZone as select from tzone


   association [1..*] to I_TransportationZoneText as _Text    on  $projection.TransportZone       = _Text.TransportZone
                                                          and $projection.CountryCode = _Text.CountryCode
  association [0..1] to I_Country as _Country on $projection.CountryCode = _Country.Country

{
  key TransportZone,
  key CountryCode
}