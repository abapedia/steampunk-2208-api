
INTERFACE if_abap_db_writer
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
  ALIASES write
    FOR if_abap_writer~write.

  METHODS get_statement_handle
    RETURNING
      VALUE(hdl) TYPE REF TO cl_abap_sql_changing_stmnt
    RAISING
      cx_resource_already_closed.
ENDINTERFACE.