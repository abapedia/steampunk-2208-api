INTERFACE if_botd_mockeml_call_config
  PUBLIC.
  METHODS
    for_read
      RETURNING VALUE(read_input_setter) TYPE REF TO if_botd_mockeml_in_set_read.
  METHODS
    for_modify
      RETURNING VALUE(modify_input_setter) TYPE REF TO if_botd_mockeml_in_set_mod.

ENDINTERFACE.