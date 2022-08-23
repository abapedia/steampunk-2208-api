@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.representativeKey: 'Region'
@ObjectModel.sapObjectNodeType.name: 'Region'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,
                                     #CDS_MODELING_DATA_SOURCE,
                                     #CDS_MODELING_ASSOCIATION_TARGET]
@AbapCatalog.sqlViewName: 'IREGION'
@AbapCatalog.preserveKey:true
@AbapCatalog.compiler.compareFilter: true
@EndUserText.label: 'Region'
@Analytics : {dataCategory: #DIMENSION, dataExtraction.enabled : true}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@Search.searchable: true
@Metadata.ignorePropagatedAnnotations:true

define view I_Region
  as select from t005s
  association [0..*] to I_RegionText as _RegionText on  $projection.Region  = _RegionText.Region
                                                    and $projection.Country = _RegionText.Country
  association [1..1] to I_Country    as _Country    on  $projection.Country = _Country.Country
{
  key Country,
  key Region
}