@EndUserText.label: 'Exchange Rate Type Text'
@VDM.viewType: #BASIC
@AbapCatalog.sqlViewName: 'IFIEXCHRATETYPET'
@AbapCatalog.preserveKey: true
@ObjectModel.representativeKey: 'ExchangeRateType'
@ObjectModel.dataCategory: #TEXT  
@AbapCatalog.buffering.status: #ACTIVE         
@AbapCatalog.buffering.type: #FULL
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass:  #MASTER
@ObjectModel.usageType.serviceQuality: #C
@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true  
@AbapCatalog.buffering.numberOfKeyFields: 1
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Analytics: {dataExtraction.enabled: true}

define view I_ExchangeRateTypeText as select from tcurw
association [0..1] to I_Language as _Language on $projection.Language = _Language.Language
{
  key ExchangeRateType,
  key Language,
      ExchangeRateTypeName
}