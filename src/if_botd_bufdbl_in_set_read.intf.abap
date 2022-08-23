INTERFACE if_botd_bufdbl_in_set_read
  PUBLIC.
  METHODS when_input
    IMPORTING input_configuration TYPE REF TO if_botd_bufdbl_in_cfg_read
    RETURNING VALUE(read_output_setter) TYPE REF TO if_botd_bufdbl_out_set_read.

ENDINTERFACE.