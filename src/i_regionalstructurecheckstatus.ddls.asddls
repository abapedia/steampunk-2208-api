@AbapCatalog.sqlViewName: 'IRGNLSTRUCCHKSTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@EndUserText.label: 'Regional Structure Check Status'
@ObjectModel.representativeKey: 'RegionalStructureCheckStatus'
@ObjectModel.sapObjectNodeType.name: 'RegionalStructureCheckStatus'
@VDM.viewType: #BASIC
define view I_RegionalStructureCheckStatus as select from dd07l
 association [0..*] to I_RegionalStrucCheckStatusText as _Text on $projection.RegionalStructureCheckStatus = _Text.RegionalStructureCheckStatus
{
  key RegionalStructureCheckStatus
}