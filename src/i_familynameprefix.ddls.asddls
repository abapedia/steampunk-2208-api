@AbapCatalog.sqlViewName: 'IFAMNAMEPREFIX'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Family Name Prefix'
@ObjectModel.representativeKey: 'FamilyNamePrefix'
@ObjectModel.sapObjectNodeType.name: 'FamilyNamePrefix'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@VDM.viewType: #BASIC
define view I_FamilyNamePrefix
  as select from tsad4
{
  key FamilyNamePrefix,
      FamilyNamePrefixName
}