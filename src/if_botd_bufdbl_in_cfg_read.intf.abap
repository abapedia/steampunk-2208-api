INTERFACE if_botd_bufdbl_in_cfg_read
  PUBLIC.
  METHODS set_instance
    IMPORTING
      instance  TYPE data
    RETURNING VALUE(self) TYPE REF TO if_botd_bufdbl_in_cfg_read.

ENDINTERFACE.