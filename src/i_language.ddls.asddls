@AbapCatalog.sqlViewName: 'ILanguage'
@EndUserText.label: 'Language'
@Analytics : {dataCategory: #DIMENSION, dataExtraction.enabled : true}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC 
@ObjectModel.representativeKey: 'Language'
@Search.searchable: true

define view I_Language as select from t002
    association [0..*] to I_LanguageText as _Text 
        on $projection.Language = _Text.LanguageCode
{
  key Language,
      LanguageISOCode
}