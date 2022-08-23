INTERFACE if_botd_mockeml_in_cfgbldr
  PUBLIC.
  METHODS for_modify
    RETURNING VALUE(input_config_builder_4_modify) TYPE REF TO if_botd_mockeml_inbldr_mod.
  METHODS for_read
    RETURNING VALUE(input_config_builder_4_read) TYPE REF TO if_botd_mockeml_inbldr_read.

ENDINTERFACE.