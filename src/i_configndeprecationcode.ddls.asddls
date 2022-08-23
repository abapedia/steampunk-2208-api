@AbapCatalog.sqlViewName: 'ICONFIGDEPCODE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.viewEnhancementCategory: #NONE
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Analytics.dataCategory: #DIMENSION
@Analytics.dataExtraction.enabled: true
@ClientHandling.type: #CLIENT_INDEPENDENT
@EndUserText.label: 'Configuration Deprecation Code'
@ObjectModel.dataCategory: #VALUE_HELP
@ObjectModel.representativeKey: 'ConfigurationDeprecationCode'
@ObjectModel.resultSet.sizeCategory: #XS
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.dataClass: #META
@ObjectModel.usageType.sizeCategory: #S
@Search.searchable: true
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@VDM.viewType: #BASIC

define view I_ConfignDeprecationCode
  as select from dd07l
  association [0..*] to I_ConfignDeprecationCodeText as _Text on $projection.ConfigurationDeprecationCode = _Text.ConfigurationDeprecationCode
{
  key ConfigurationDeprecationCode,
      DomainValue
}