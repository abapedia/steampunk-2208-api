@AbapCatalog.sqlViewName: 'ICONFIGDEPCODET'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.viewEnhancementCategory: #NONE
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Analytics.dataExtraction.enabled: true
@ClientHandling.type: #CLIENT_INDEPENDENT
@EndUserText.label: 'Configuration Deprecation Code Text'
@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'ConfigurationDeprecationCode'
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.dataClass: #META
@ObjectModel.usageType.sizeCategory: #S
@Search.searchable: true
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@VDM.viewType: #BASIC
define view I_ConfignDeprecationCodeText
  as select from dd07t
  association [0..1] to I_Language as _Language on $projection.Language = _Language.Language
{
  key Language,
  key ConfigurationDeprecationCode,
      DomainValue,
      ConfignDeprecationCodeName
}