@AbapCatalog.sqlViewName: 'IPOSTALCITYTEXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Description of Postal City'
@ObjectModel.representativeKey: 'CityNumber'
@ObjectModel.dataCategory: #TEXT
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]
@Search.searchable: true
@VDM.viewType: #BASIC
define view I_PostalCityText
  as select from adrcityt
  association [1..1] to I_Country    as _Country    on  $projection.Country = _Country.Country

  association [1..1] to I_PostalCity as _PostalCity on  $projection.Country    = _PostalCity.Country
                                                    and $projection.CityNumber = _PostalCity.CityNumber
{
  key Language,
  key Country,
  key CityNumber,
      CityName
}