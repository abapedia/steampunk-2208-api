CLASS cl_botd_mockemlapi_bldrfactory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS get_input_config_builder
      RETURNING VALUE(input_config_builder) TYPE REF TO if_botd_mockeml_in_cfgbldr.
    CLASS-METHODS get_output_config_builder
      RETURNING VALUE(output_config_builder) TYPE REF TO if_botd_mockeml_out_cfgbldr.

ENDCLASS.

CLASS cl_botd_mockemlapi_bldrfactory IMPLEMENTATION.
ENDCLASS.