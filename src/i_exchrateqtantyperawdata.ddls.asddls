@AbapCatalog.sqlViewName: 'IFICURRQUOTRAW'
@EndUserText.label: 'Exchange Rate Quotation Type'

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
@AbapCatalog.buffering.type: #FULL
//@AbapCatalog.buffering.numberOfKeyFields: 4
@Analytics.internalName: #LOCAL  

//@ObjectModel.representativeKey: ['ValidityStartDate']
@Analytics:{
//    dataCategory: #DIMENSION,
    dataExtraction: { enabled: true } }

define view I_ExchRateQtanTypeRawData as select from tcurn 
association [0..1] to I_Currency  as _SourceCurrency on $projection.SourceCurrency = _SourceCurrency.Currency
association [0..1] to I_Currency  as _TargetCurrency on $projection.TargetCurrency = _TargetCurrency.Currency
{
  key SourceCurrency,
  key TargetCurrency,
  key ValidityStartDate,
      CurrencyQuotationType
}