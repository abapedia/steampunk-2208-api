CLASS cx_sy_open_sql_error DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_sql_error
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_open_sql_error TYPE c LENGTH 32 VALUE '854B8E69FDDBD411B30C000102A3F65B'. "#EC NOTEXT

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !sqlcode TYPE i OPTIONAL
      !sqlmsg TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_open_sql_error IMPLEMENTATION.
ENDCLASS.