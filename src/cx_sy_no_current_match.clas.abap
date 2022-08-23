CLASS cx_sy_no_current_match DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_matcher
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_no_current_match TYPE c LENGTH 32 VALUE '4253BEDAA9E3217BE10000000A1146EE'. "#EC NOTEXT

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !pattern TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_no_current_match IMPLEMENTATION.
ENDCLASS.