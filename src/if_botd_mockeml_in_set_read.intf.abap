  "! Other possible configurations:
INTERFACE if_botd_mockeml_in_set_read
  PUBLIC.
  METHODS when_input
    IMPORTING input_configuration TYPE REF TO if_botd_mockeml_in_cfg_read
    RETURNING VALUE(read_output_setter) TYPE REF TO if_botd_mockeml_out_set_read.
  METHODS ignore_input
    RETURNING VALUE(read_output_setter) TYPE REF TO if_botd_mockeml_out_set_read
    RAISING cx_no_check.
  METHODS when_partial_input
    IMPORTING input_configuration TYPE REF TO if_botd_mockeml_in_cfg_read
    RETURNING VALUE(read_output_setter) TYPE REF TO if_botd_mockeml_out_set_read
    RAISING cx_no_check.

ENDINTERFACE.