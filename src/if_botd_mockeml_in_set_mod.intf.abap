INTERFACE if_botd_mockeml_in_set_mod
  PUBLIC.
  METHODS when_input
    IMPORTING input_configuration TYPE REF TO if_botd_mockeml_in_cfg_mod
    RETURNING VALUE(modify_output_setter) TYPE REF TO if_botd_mockeml_out_set_mod
    RAISING cx_no_check.
  METHODS ignore_input
    RETURNING VALUE(modify_output_setter) TYPE REF TO if_botd_mockeml_out_set_mod
    RAISING cx_no_check.
  METHODS when_partial_input
    IMPORTING input_configuration TYPE REF TO if_botd_mockeml_in_cfg_mod
    RETURNING VALUE(modify_output_setter) TYPE REF TO if_botd_mockeml_out_set_mod
    RAISING cx_no_check.

ENDINTERFACE.