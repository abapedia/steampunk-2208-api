INTERFACE if_botd_mockeml_verification
  PUBLIC.
  METHODS is_called_times
    IMPORTING
      times TYPE i.
  METHODS is_never_called.
  METHODS is_called_at_least
    IMPORTING
      times TYPE i.
  METHODS is_called_at_most
    IMPORTING
      times TYPE i.
  METHODS modify
    IMPORTING
      input_configuration TYPE REF TO if_botd_mockeml_in_cfg_mod OPTIONAL
    RETURNING
      VALUE(behavior_verification) TYPE REF TO if_botd_mockeml_verify_modify.
  METHODS read
    IMPORTING
      input_configuration TYPE REF TO if_botd_mockeml_in_cfg_read OPTIONAL
    RETURNING
      VALUE(behavior_verification) TYPE REF TO if_botd_mockeml_verify_read.

ENDINTERFACE.