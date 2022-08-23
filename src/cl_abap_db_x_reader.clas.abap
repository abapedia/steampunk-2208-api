CLASS cl_abap_db_x_reader DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_abap_db_reader.
    INTERFACES if_abap_db_blob_handle.
    INTERFACES if_abap_db_lob_handle.

    ALIASES get_statement_handle
      FOR if_abap_db_reader~get_statement_handle.

  PROTECTED SECTION.
ENDCLASS.

CLASS cl_abap_db_x_reader IMPLEMENTATION.
ENDCLASS.