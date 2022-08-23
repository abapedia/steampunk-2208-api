@AbapCatalog.sqlViewName: 'IBPGRPTYPETXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true

@ClientHandling.algorithm: #SESSION_VARIABLE
@VDM: {
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel: {
  representativeKey: 'BusinessPartnerGroupType',
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
@Search.searchable: true
@EndUserText.label: 'Business Partner Group Type - Text'
define view I_BusinessPartnerGroupTypeText
  as select from tb026
{
  key Language,
  key BusinessPartnerGroupType,
      BusPartGroupTypeShortDesc,
      BusinessPartnerGroupTypeDesc
}