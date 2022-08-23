@AbapCatalog.sqlViewName: 'IBPLEGALFORMTXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@ClientHandling.algorithm: #SESSION_VARIABLE
@VDM: {
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel: {
  representativeKey: 'LegalForm',
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
@EndUserText.label: 'Business Partner Legal Form - Text'
define view I_BusinessPartnerLegalFormText
  as select from tb020
{
  key Language,
  key LegalForm,
      LegalFormShortName,
      LegalFormDescription
}