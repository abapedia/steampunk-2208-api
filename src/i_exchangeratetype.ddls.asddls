@EndUserText.label: 'Exchange Rate Type'
@Analytics: {dataCategory: #DIMENSION, dataExtraction.enabled: true}
@VDM.viewType: #BASIC
@AbapCatalog.sqlViewName: 'IFIEXCHRATETYPE'
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.representativeKey: 'ExchangeRateType'
@AbapCatalog.buffering.status: #ACTIVE         
@AbapCatalog.buffering.type: #FULL
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.usageType.dataClass:  #MASTER
@ObjectModel.usageType.serviceQuality: #A
@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true  
@AbapCatalog.buffering.numberOfKeyFields: 1
@Search.searchable: true

define view I_ExchangeRateType as select from tcurv
association [0..*] to I_ExchangeRateTypeText as _Text
on tcurv.kurst = _Text.ExchangeRateType
{
  key ExchangeRateType,
      ReferenceCurrency,
      BuyingRateAvgExchangeRateType,
      InvertedExchangeRateIsAllowed,
      SellingRateAvgExchangeRateType,
      FixedExchangeRateIsUsed,
      SpecialConversionIsUsed,
      SourceCurrencyIsBaseCurrency
}