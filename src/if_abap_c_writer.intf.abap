
INTERFACE if_abap_c_writer
  PUBLIC.

  INTERFACES if_abap_writer.

  ALIASES close
    FOR if_abap_close_resource~close.
  ALIASES flush
    FOR if_abap_writer~flush.
  ALIASES is_closed
    FOR if_abap_close_resource~is_closed.
  ALIASES is_x_writer
    FOR if_abap_writer~is_x_writer.

  METHODS write
    IMPORTING
      !data TYPE string
    RAISING
      cx_resource_already_closed
      cx_stream_error.
ENDINTERFACE.