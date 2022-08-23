@AbapCatalog.sqlViewName: 'ITERTIARYRGNTXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Description of Tertiary Region'
@ObjectModel.representativeKey: 'TertiaryRegion'
@ObjectModel.dataCategory: #TEXT
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]
@Search.searchable: true
@VDM.viewType: #BASIC
define view I_TertiaryRegionText
  as select from adrtownshipt
  association [1..1] to I_Country         as _Country         on  $projection.Country = _Country.Country

  association [1..1] to I_Region          as _Region          on  $projection.Region  = _Region.Region
                                                              and $projection.Country = _Region.Country

  association [1..1] to I_SecondaryRegion as _SecondaryRegion on  $projection.Country         = _SecondaryRegion.Country
                                                              and $projection.Region          = _SecondaryRegion.Region
                                                              and $projection.SecondaryRegion = _SecondaryRegion.SecondaryRegion

  association [1..1] to I_TertiaryRegion  as _TertiaryRegion  on  $projection.Country         = _TertiaryRegion.Country
                                                              and $projection.Region          = _TertiaryRegion.Region
                                                              and $projection.SecondaryRegion = _TertiaryRegion.SecondaryRegion
                                                              and $projection.TertiaryRegion  = _TertiaryRegion.TertiaryRegion
{
  key Language,
  key Country,
  key Region,
  key SecondaryRegion,
  key TertiaryRegion,
      TertiaryRegionName
}