INTERFACE if_botd_mockeml_out_set_mod
  PUBLIC.
  METHODS then_set_output
    IMPORTING output_configuration TYPE REF TO if_botd_mockeml_out_cfg_mod
    RETURNING VALUE(self) TYPE REF TO if_botd_mockeml_out_set_mod.
  METHODS for_times
    IMPORTING
      times TYPE i
    RETURNING
      VALUE(self) TYPE REF TO if_botd_mockeml_out_set_mod.

ENDINTERFACE.