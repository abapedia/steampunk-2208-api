INTERFACE if_botd_mockeml_verify_read
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

ENDINTERFACE.