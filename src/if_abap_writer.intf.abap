
INTERFACE if_abap_writer
  PUBLIC.

  INTERFACES if_abap_close_resource.

  ALIASES close
    FOR if_abap_close_resource~close.
  ALIASES is_closed
    FOR if_abap_close_resource~is_closed.

  METHODS write
    IMPORTING
      !data TYPE any
    RAISING
      cx_resource_already_closed
      cx_parameter_invalid_type
      cx_stream_error.
  METHODS flush
    RAISING
      cx_stream_error
      cx_resource_already_closed.

  METHODS is_x_writer
    RETURNING
      VALUE(result) TYPE abap_bool.
ENDINTERFACE.