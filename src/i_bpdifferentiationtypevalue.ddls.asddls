@AbapCatalog.sqlViewName: 'IBPDIFFTYPEVALUE'
@VDM.viewType: #BASIC
@ObjectModel.representativeKey:'BusinessPartnerDiffTypeValue'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #D
@ObjectModel.usageType.sizeCategory: #M
@AccessControl.personalData.blocking: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE 
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@EndUserText.label: 'BP Differentiation type value'
@ObjectModel.supportedCapabilities: #SQL_DATA_SOURCE
@Metadata.ignorePropagatedAnnotations: true
define view I_BPDifferentiationTypeValue as select distinct from but100 {
  key BusinessPartnerDiffTypeValue
}