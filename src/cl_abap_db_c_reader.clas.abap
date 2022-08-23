CLASS cl_abap_db_c_reader DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_c_reader
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_abap_db_reader.
    INTERFACES if_abap_db_clob_handle.
    INTERFACES if_abap_db_lob_handle.

    ALIASES get_statement_handle
      FOR if_abap_db_reader~get_statement_handle.

  PROTECTED SECTION.
ENDCLASS.

CLASS cl_abap_db_c_reader IMPLEMENTATION.
ENDCLASS.