CLASS cx_sy_regex_too_complex DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_matcher
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_regex_too_complex TYPE c LENGTH 32 VALUE '4249B5E15DC02E85E10000000A1146EE' ##NO_TEXT.
    DATA error_message TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !pattern TYPE string OPTIONAL
      !error_message TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_regex_too_complex IMPLEMENTATION.
ENDCLASS.