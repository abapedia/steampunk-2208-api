@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Predefined Fields: Value Help'
define view entity I_PCF_CodeValueHelp
  as select from pcf_c_rep_code as db

  association [0..*] to I_PCF_CodeValueHelpText as _Text on  _Text.NodeName  = $projection.NodeName
                                                         and _Text.FieldName = $projection.FieldName
                                                         and _Text.CodeValue = $projection.CodeValue
{
  key NodeName,
  key FieldName,
  key CodeValue
}