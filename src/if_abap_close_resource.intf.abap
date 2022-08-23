
INTERFACE if_abap_close_resource
  PUBLIC.

  METHODS close
    RAISING
      cx_close_resource_error.
  METHODS is_closed
    RETURNING
      VALUE(closed) TYPE abap_bool.
ENDINTERFACE.