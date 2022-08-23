CLASS cx_xslt_system_error DEFINITION
  PUBLIC
  INHERITING FROM cx_xslt_exception
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.

    METHODS get_xslt_source_position
    EXPORTING
      !main_prog_name TYPE string
      !prog_name TYPE string
      !prog_line TYPE i
      !block_type TYPE i
      !block_name TYPE string
      !valid TYPE abap_bool.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_xslt_system_error IMPLEMENTATION.
ENDCLASS.