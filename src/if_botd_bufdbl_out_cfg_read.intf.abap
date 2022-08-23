INTERFACE if_botd_bufdbl_out_cfg_read
  PUBLIC.

  METHODS set_reported
    IMPORTING
      reported  TYPE data
    RETURNING VALUE(self) TYPE REF TO  if_botd_bufdbl_out_cfg_read.
  METHODS set_failed
    IMPORTING
      failed  TYPE data
    RETURNING VALUE(self) TYPE REF TO  if_botd_bufdbl_out_cfg_read.

ENDINTERFACE.