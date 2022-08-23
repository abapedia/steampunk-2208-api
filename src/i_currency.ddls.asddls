@EndUserText.label: 'Currency'
@ObjectModel.representativeKey: 'Currency'
@ObjectModel.sapObjectNodeType.name: 'Currency' 
@Analytics: {dataCategory: #DIMENSION, dataExtraction.enabled: true}
@VDM.viewType: #BASIC 
@AbapCatalog.sqlViewName: 'IFICURRENCY'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true

define view I_Currency 
  as select from tcurc
  left outer join tcurx on tcurc.waers = tcurx.currkey
  
  association [0..*] to I_CurrencyText as _Text 
    on $projection.Currency = _Text.Currency
{
  key Currency,
      Decimals,
      CurrencyISOCode,
      AlternativeCurrencyKey,
      IsPrimaryCurrencyForISOCrcy
}