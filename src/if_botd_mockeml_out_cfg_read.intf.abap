INTERFACE if_botd_mockeml_out_cfg_read
  PUBLIC.
  METHODS set_reported
    IMPORTING
      reported  TYPE data
    RETURNING VALUE(self) TYPE REF TO  if_botd_mockeml_out_cfg_read.
  METHODS set_failed
    IMPORTING
      failed  TYPE data
    RETURNING VALUE(self) TYPE REF TO  if_botd_mockeml_out_cfg_read.
  METHODS set_result_for_read
    IMPORTING
      result  TYPE STANDARD TABLE
    RETURNING VALUE(self) TYPE REF TO  if_botd_mockeml_out_cfg_read.
  METHODS set_result_for_read_ba
    IMPORTING
      source_entity_name TYPE abp_entity_name
      assoc_name TYPE abp_association_name
      result     TYPE STANDARD TABLE
    RETURNING VALUE(self) TYPE REF TO  if_botd_mockeml_out_cfg_read.

ENDINTERFACE.