@AbapCatalog.sqlViewName: 'IBPADNONDLRSNT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'AddressNonDeliverableReason'
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #X
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.dataCategory: #TEXT
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Address Non-Deliverable Reason - Text'
define view I_AddressNonDeliverableReasonT
  as select from tsad12t
{
  key Language,
  key AddressNonDeliverableReason,
      AddressNonDeliverableReasonTxt,
      AddrNonDeliverableReasonDesc
}