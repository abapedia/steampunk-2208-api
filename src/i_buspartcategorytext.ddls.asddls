@AbapCatalog.sqlViewName: 'IBPCATEGORYTXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@ClientHandling.algorithm: #SESSION_VARIABLE
@VDM: {
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel: {
  representativeKey: 'BusinessPartnerCategory',
  dataCategory: #TEXT,
  usageType.serviceQuality: #C,
  usageType.sizeCategory : #L,
  usageType.dataClass: #MASTER,
  modelingPattern: #LANGUAGE_DEPENDENT_TEXT,
  supportedCapabilities: [ #LANGUAGE_DEPENDENT_TEXT, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET ]
}
@Analytics.dataExtraction.enabled: true 
@Analytics.internalName: #LOCAL
@Metadata.ignorePropagatedAnnotations:true
@EndUserText.label: 'Business Partner Category - Text'
@Search.searchable: true
define view I_BusPartCategoryText 
  as select from dd07t
  association [0..1] to I_BusPartCategory as _CategoryValueHelp on $projection.BusinessPartnerCategory = _CategoryValueHelp.BusinessPartnerCategory
{
  key BusinessPartnerCategory,
  key Language,
      BusinessPartnerCategoryText,
      DomainValue
}