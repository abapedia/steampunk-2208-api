INTERFACE if_ftd_testdouble_argument
  PUBLIC.
  METHODS get_name
    RETURNING
      VALUE(result) TYPE abap_parmname.
  METHODS get_value
    EXPORTING
      value TYPE data
    RETURNING
      VALUE(result) TYPE REF TO data.
  METHODS get_kind
    RETURNING
      VALUE(result) TYPE abap_parmkind.
  METHODS is_supplied
    RETURNING
      VALUE(result) TYPE abap_bool.

ENDINTERFACE.