@AbapCatalog.sqlViewName: 'IPHNMBRTYPETXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck:#NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Text for Phone Number Type'
@ObjectModel.dataCategory:         #TEXT
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]
@Search.searchable:                true
@VDM.viewType: #BASIC 

define view I_PhoneNumberTypeText
  as select from dd07t
{
  key PhoneNumberType,
  key Language,
      PhoneNumberTypeText
}