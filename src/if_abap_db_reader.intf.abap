
INTERFACE if_abap_db_reader
  PUBLIC.

  INTERFACES if_abap_db_lob_handle.
  INTERFACES if_abap_reader.

  ALIASES close
    FOR if_abap_close_resource~close.
  ALIASES data_available
    FOR if_abap_reader~data_available.
  ALIASES delete_mark
    FOR if_abap_reader~delete_mark.
  ALIASES is_closed
    FOR if_abap_close_resource~is_closed.
  ALIASES is_mark_supported
    FOR if_abap_reader~is_mark_supported.
  ALIASES is_reset_supported
    FOR if_abap_reader~is_reset_supported.
  ALIASES is_x_reader
    FOR if_abap_reader~is_x_reader.
  ALIASES read
    FOR if_abap_reader~read.
  ALIASES reset
    FOR if_abap_reader~reset.
  ALIASES reset_to_mark
    FOR if_abap_reader~reset_to_mark.
  ALIASES set_mark
    FOR if_abap_reader~set_mark.
  ALIASES skip
    FOR if_abap_reader~skip.

  METHODS get_statement_handle
    RETURNING
      VALUE(hdl) TYPE REF TO cl_abap_sql_select_statement
    RAISING
      cx_resource_already_closed.
ENDINTERFACE.