@AbapCatalog.sqlViewName: 'IADMNGURITYPETXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck:#NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Address Management URI Type - Text'
@ObjectModel.dataCategory:         #TEXT
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]

@Search.searchable:                true
@VDM.viewType: #BASIC
define view I_AddressManagementURITypeText
  as select from dd07t
{
  key AddressManagementURIType,
  key Language,
      AddressManagementURITypeText
}