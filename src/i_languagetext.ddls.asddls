@AbapCatalog.sqlViewName: 'ILANGUAGETEXT'
@EndUserText.label: 'Language Text'
@ObjectModel.dataCategory: #TEXT
@Analytics.dataExtraction.enabled : true
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'LanguageCode'
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass: #META
@ObjectModel.usageType.serviceQuality: #B
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true

define view I_LanguageText as select from t002t 
    association[0..1] to I_Language as _Language 
        on $projection.Language = _Language.Language
    association[0..1] to I_Language as _LanguageCode 
        on $projection.LanguageCode = _LanguageCode.Language
{
  key Language,
  key LanguageCode,
      LanguageName
}