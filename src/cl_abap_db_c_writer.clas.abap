CLASS cl_abap_db_c_writer DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_c_writer
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_abap_db_writer.

    ALIASES get_statement_handle
      FOR if_abap_db_writer~get_statement_handle.

  PROTECTED SECTION.

ENDCLASS.

CLASS cl_abap_db_c_writer IMPLEMENTATION.
ENDCLASS.