INTERFACE if_botd_bufdbl_in_cfg_mod
  PUBLIC.
  METHODS set_instance
    IMPORTING
      instance  TYPE data
    RETURNING VALUE(self) TYPE REF TO if_botd_bufdbl_in_cfg_mod
    RAISING cx_no_check.

ENDINTERFACE.