@AbapCatalog.sqlViewName: 'IBPDATACTRUSG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck:#PRIVILEGED_ONLY
@EndUserText.label: 'BP Data Controller Usage'
@ObjectModel.usageType.serviceQuality: #B
@ObjectModel.usageType.sizeCategory: #XL
@ObjectModel.usageType.dataClass: #MASTER
@ClientHandling.algorithm: #SESSION_VARIABLE
@AccessControl.personalData.blocking: #REQUIRED

@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'BusinessPartner'
@Metadata.allowExtensions:true

define view I_BPDataControllerUsage
  as select from but_dc_link
{
  key BusinessPartner,
  key DataControllerName,
  key BPDataPurposeText,
      DataControlAssignmentStatus,
      BPDataControllerIsDerived,
      PurposeDerived,
      PurposeType,
      BusinessPurposeFlag
}