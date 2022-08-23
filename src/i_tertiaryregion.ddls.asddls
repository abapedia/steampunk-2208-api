@AbapCatalog.sqlViewName: 'ITERTIARYREGION'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Tertiary Region'
@ObjectModel.representativeKey: 'TertiaryRegion'
@ObjectModel.sapObjectNodeType.name: 'TertiaryRegion'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@VDM.viewType: #BASIC
define view I_TertiaryRegion
  as select from adrtownship
  association [1..1] to I_Country            as _Country         on  $projection.Country = _Country.Country

  association [1..1] to I_Region             as _Region          on  $projection.Region  = _Region.Region
                                                                 and $projection.Country = _Region.Country

  association [1..1] to I_SecondaryRegion    as _SecondaryRegion on  $projection.Country         = _SecondaryRegion.Country
                                                                 and $projection.Region          = _SecondaryRegion.Region
                                                                 and $projection.SecondaryRegion = _SecondaryRegion.SecondaryRegion

  association [0..*] to I_TertiaryRegionText as _Text            on  $projection.Country         = _Text.Country
                                                                 and $projection.Region          = _Text.Region
                                                                 and $projection.SecondaryRegion = _Text.SecondaryRegion
                                                                 and $projection.TertiaryRegion  = _Text.TertiaryRegion
{
  key Country,
  key Region,
  key SecondaryRegion,
  key TertiaryRegion
}