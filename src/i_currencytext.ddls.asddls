@EndUserText.label: 'Currency Text'
@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'Currency'
@Analytics.dataExtraction.enabled: true
@VDM.viewType: #BASIC
@AbapCatalog.sqlViewName: 'IFICURRENCYTEXT'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true

define view I_CurrencyText
  as select from tcurt

  association[1..1] to I_Currency as _Currency
    on $projection.Currency = _Currency.Currency
  association[0..1] to I_Language as _Language
    on $projection.Language = _Language.Language
{
  key Language,
  key Currency,
      CurrencyName,
      CurrencyShortName
}