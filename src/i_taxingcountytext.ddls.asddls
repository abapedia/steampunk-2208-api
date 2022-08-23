@AbapCatalog.sqlViewName: 'ITAXINGCOUNTYTXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Description of Taxing County'
@ObjectModel.representativeKey: 'TaxingCounty'
@ObjectModel.dataCategory: #TEXT
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]
@Search.searchable: true
@VDM.viewType: #BASIC
define view I_TaxingCountyText
  as select from t005f
  association [1..1] to I_Country      as _Country      on  $projection.Country = _Country.Country

  association [1..1] to I_Region       as _Region       on  $projection.Region  = _Region.Region
                                                        and $projection.Country = _Region.Country

  association [1..1] to I_TaxingCounty as _TaxingCounty on  $projection.Country      = _TaxingCounty.Country
                                                        and $projection.Region       = _TaxingCounty.Region
                                                        and $projection.TaxingCounty = _TaxingCounty.TaxingCounty
{
  key Language,
  key Country,
  key Region,
  key TaxingCounty,
      TaxingCountyName
}