@AbapCatalog.sqlViewName: 'ISTREET'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Street'
@ObjectModel.representativeKey: 'Street'
@ObjectModel.sapObjectNodeType.name: 'Street'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@VDM.viewType: #BASIC
define view I_Street
  as select from adrstreet
  association [1..1] to I_Country    as _Country on $projection.Country = _Country.Country
  
  association [0..*] to I_StreetText as _Text    on $projection.Street  = _Text.Street
  
  association [1..1] to I_PostalCity as _PostalCity on  $projection.Country    = _PostalCity.Country
                                                    and $projection.CityNumber = _PostalCity.CityNumber
{
  key Country,
  key Street,
      CityNumber
}