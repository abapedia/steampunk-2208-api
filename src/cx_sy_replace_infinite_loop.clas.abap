CLASS cx_sy_replace_infinite_loop DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_replace_infinite_loop TYPE c LENGTH 32
 VALUE '4F0BB8396F051547E10000000A11447B'.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_replace_infinite_loop IMPLEMENTATION.
ENDCLASS.