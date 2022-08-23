@AbapCatalog.sqlViewName: 'IEXCHRATESPREAD'
@EndUserText.label: 'Exchange Rate Raw Data'

@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true

@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@Metadata.ignorePropagatedAnnotations: true 
@ClientHandling.type: #INHERITED 
@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #L
@ObjectModel.usageType.dataClass: #CUSTOMIZING 

@AbapCatalog.buffering.status: #ACTIVE        
@AbapCatalog.buffering.type: #GENERIC
@AbapCatalog.buffering.numberOfKeyFields: 1
@Analytics.internalName: #LOCAL   

//@ObjectModel.representativeKey: 'ValidityStartDate'
@Analytics:{
//    dataCategory: #DIMENSION,
    dataExtraction: { enabled: true }
            }

define view I_ExchangeRateRawData as select from tcurr 
association [0..1] to I_ExchangeRateType as _ExchangeRateType on $projection.ExchangeRateType = _ExchangeRateType.ExchangeRateType
association [0..1] to I_Currency  as _SourceCurrency on $projection.SourceCurrency = _SourceCurrency.Currency
association [0..1] to I_Currency  as _TargetCurrency on $projection.TargetCurrency = _TargetCurrency.Currency
{
  key ExchangeRateType,
  key SourceCurrency,
  key TargetCurrency,
  key ValidityStartDate,
      ExchangeRate,
      NumberOfSourceCurrencyUnits,
      NumberOfTargetCurrencyUnits
}