CLASS cx_lob_sql_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_lob_sql_error TYPE c LENGTH 32 VALUE '001560AA0E0802DBB2F784920D650427'. "#EC NOTEXT
    DATA sql_error_code TYPE i.
    DATA sql_error_text TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !sql_error_code TYPE i OPTIONAL
      !sql_error_text TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_lob_sql_error IMPLEMENTATION.
ENDCLASS.