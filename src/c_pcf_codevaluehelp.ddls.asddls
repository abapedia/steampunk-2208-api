@AbapCatalog.sqlViewName: 'CPCFCODEVH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Predefined Fields: Value Help'
@Search.searchable: true
define view C_PCF_CodeValueHelp
  as select from I_PCF_CodeValueHelp
{
  key NodeName,
  key FieldName,
  key CodeValue,
      _Text
}