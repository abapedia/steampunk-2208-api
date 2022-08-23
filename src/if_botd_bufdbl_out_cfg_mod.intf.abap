INTERFACE if_botd_bufdbl_out_cfg_mod
  PUBLIC.
  METHODS set_mapped
    IMPORTING
      mapped  TYPE data
    RETURNING VALUE(self) TYPE REF TO  if_botd_bufdbl_out_cfg_mod.
  METHODS set_reported
    IMPORTING
      reported  TYPE data
    RETURNING VALUE(self) TYPE REF TO  if_botd_bufdbl_out_cfg_mod.
  METHODS set_failed
    IMPORTING
      failed  TYPE data
    RETURNING VALUE(self) TYPE REF TO  if_botd_bufdbl_out_cfg_mod.

ENDINTERFACE.