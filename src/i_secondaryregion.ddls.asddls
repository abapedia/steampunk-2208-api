@AbapCatalog.sqlViewName: 'ISECONDARYREGION'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Secondary Region'
@ObjectModel.representativeKey: 'SecondaryRegion'
@ObjectModel.sapObjectNodeType.name: 'SecondaryRegion'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]

@VDM.viewType: #BASIC
define view I_SecondaryRegion
  as select from adrcounty
  association [1..1] to I_Country             as _Country on  $projection.Country = _Country.Country
  
  association [1..1] to I_Region              as _Region  on  $projection.Region  = _Region.Region
                                                          and $projection.Country = _Region.Country
                                                          
  association [0..*] to I_SecondaryRegionText as _Text    on  $projection.Country         = _Text.Country
                                                          and $projection.Region          = _Text.Region
                                                          and $projection.SecondaryRegion = _Text.SecondaryRegion
{
  key Country,
  key Region,
  key SecondaryRegion
}