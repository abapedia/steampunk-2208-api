CLASS cx_sy_sql_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_sql_error TYPE c LENGTH 32 VALUE '874B8E69FDDBD411B30C000102A3F65B'. "#EC NOTEXT
    DATA sqlcode TYPE i.
    DATA sqlmsg TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !sqlcode TYPE i OPTIONAL
      !sqlmsg TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_sql_error IMPLEMENTATION.
ENDCLASS.