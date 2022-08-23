INTERFACE if_botd_mockeml_out_set_read
  PUBLIC.
  METHODS then_set_output
    IMPORTING output_configuration TYPE REF TO if_botd_mockeml_out_cfg_read
    RETURNING VALUE(self) TYPE REF TO if_botd_mockeml_out_set_read.
  METHODS for_times
    IMPORTING
      times TYPE i
    RETURNING
      VALUE(self) TYPE REF TO if_botd_mockeml_out_set_read.

ENDINTERFACE.