CLASS cx_sy_sql_replacement_error DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_open_sql_error
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_sql_replacement_error TYPE c LENGTH 32 VALUE '468B32C54B041ED6A3D882210D48CC22' ##NO_TEXT.
    DATA source TYPE string READ-ONLY.
    DATA target TYPE string READ-ONLY.
    DATA schema TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !sqlcode TYPE i OPTIONAL
      !sqlmsg TYPE string OPTIONAL
      !source TYPE string OPTIONAL
      !target TYPE string OPTIONAL
      !schema TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_sql_replacement_error IMPLEMENTATION.
ENDCLASS.