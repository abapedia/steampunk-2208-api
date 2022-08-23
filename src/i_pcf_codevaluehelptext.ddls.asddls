@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Predefined Fields: Value Help Texts'
@Search.searchable: true
define view entity I_PCF_CodeValueHelpText
  as select from pcf_c_rep_code_t
{
  key NodeName,
  key FieldName,
  key Language,
  key CodeValue,
      Description
}