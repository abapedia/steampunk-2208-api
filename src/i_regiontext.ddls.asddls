@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'Region'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,
                                     #CDS_MODELING_DATA_SOURCE,
                                     #CDS_MODELING_ASSOCIATION_TARGET,
                                     #LANGUAGE_DEPENDENT_TEXT]
@AbapCatalog.sqlViewName: 'IREGIONTEXT'
@AbapCatalog.preserveKey:true
@AbapCatalog.compiler.compareFilter: true
@EndUserText.label: 'Region - Text'
@Analytics.dataExtraction.enabled: true
@VDM.viewType: #BASIC
@AccessControl.personalData.blocking: #NOT_REQUIRED
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations:true
@Search.searchable:                true

define view I_RegionText
  as select from t005u
  association [0..1] to I_Region   as _Region   on  $projection.Region  = _Region.Region
                                                and $projection.Country = _Region.Country
  association [0..1] to I_Language as _Language on  $projection.Language = _Language.Language
  association [0..1] to I_Country  as _Country  on  $projection.Country = _Country.Country
{
  key Country,
  key Region,
  key Language,
      RegionName
}