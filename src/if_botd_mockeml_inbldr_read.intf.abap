INTERFACE if_botd_mockeml_inbldr_read
  PUBLIC.
  METHODS build_entity_part
    IMPORTING
      entity_name TYPE abp_entity_name
    RETURNING
      VALUE(entity_part) TYPE REF TO if_botd_mockeml_entpart_read.
  METHODS build_input_for_eml
    RETURNING
      VALUE(input_configuration) TYPE REF TO if_botd_mockeml_in_cfg_read.

ENDINTERFACE.