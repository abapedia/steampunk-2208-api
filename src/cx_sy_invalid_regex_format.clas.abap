CLASS cx_sy_invalid_regex_format DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_matcher
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_invalid_regex_format TYPE c LENGTH 32 VALUE '4249B4985DC02E85E10000000A1146EE' ##NO_TEXT.
    DATA format TYPE string.
    DATA offset TYPE int4.
    DATA error_message TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !pattern TYPE string OPTIONAL
      !format TYPE string OPTIONAL
      !offset TYPE int4 OPTIONAL
      !error_message TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_invalid_regex_format IMPLEMENTATION.
ENDCLASS.