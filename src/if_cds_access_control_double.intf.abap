INTERFACE if_cds_access_control_double
  PUBLIC.
  METHODS enable_access_control
    IMPORTING
      !i_access_control_data TYPE REF TO if_cds_access_control_data.
  METHODS disable_access_control.

ENDINTERFACE.