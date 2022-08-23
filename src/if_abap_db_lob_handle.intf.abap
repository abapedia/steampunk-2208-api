
INTERFACE if_abap_db_lob_handle
  PUBLIC.

  INTERFACES if_abap_close_resource.

  ALIASES close
    FOR if_abap_close_resource~close.
  ALIASES is_closed
    FOR if_abap_close_resource~is_closed.
ENDINTERFACE.