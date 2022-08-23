INTERFACE if_botd_bufdbl_out_set_mod
  PUBLIC.
  METHODS then_set_output
    IMPORTING output_configuration TYPE REF TO if_botd_bufdbl_out_cfg_mod
    RETURNING VALUE(self) TYPE REF TO if_botd_bufdbl_out_set_mod.

ENDINTERFACE.