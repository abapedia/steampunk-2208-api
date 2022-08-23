INTERFACE if_botd_mockeml_in_cfg_read
  PUBLIC.
  METHODS add_entity_part
    IMPORTING
      entity_part  TYPE REF TO if_botd_mockeml_entpart_read
    RETURNING VALUE(self) TYPE REF TO if_botd_mockeml_in_cfg_read.

ENDINTERFACE.