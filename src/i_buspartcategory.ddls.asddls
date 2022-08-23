@AbapCatalog.sqlViewName: 'IBPCATEGORY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@Search.searchable: true
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #X
@ObjectModel.resultSet.sizeCategory: #XS
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@EndUserText.label: 'Business Partner Category'
@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.representativeKey: 'BusinessPartnerCategory'
@Analytics.dataExtraction.enabled: true
@Analytics.dataCategory: #DIMENSION
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,
                                     #CDS_MODELING_DATA_SOURCE,
                                     #CDS_MODELING_ASSOCIATION_TARGET,
                                     #ANALYTICAL_DIMENSION,
                                     #EXTRACTION_DATA_SOURCE]
@ObjectModel.modelingPattern: #ANALYTICAL_DIMENSION 
@Analytics.internalName: #LOCAL
@Metadata.ignorePropagatedAnnotations: true
define view I_BusPartCategory 
  as select from dd07l
  association [0..*] to I_BusPartCategoryText as _Text on $projection.BusinessPartnerCategory = _Text.BusinessPartnerCategory
{
  key BusinessPartnerCategory,
      DomainValue
}