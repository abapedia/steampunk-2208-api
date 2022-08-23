INTERFACE if_botd_mockeml_out_cfgbldr
  PUBLIC.
  METHODS for_modify
    RETURNING VALUE(output_config_builder_4_modify) TYPE REF TO if_botd_mockeml_outbldr_mod.
  METHODS for_read
    RETURNING VALUE(output_config_builder_4_read) TYPE REF TO if_botd_mockeml_outbldr_read.

ENDINTERFACE.