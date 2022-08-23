CLASS cx_sy_regex DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_regex TYPE c LENGTH 32 VALUE 'DEB2963F4AA53D72E10000000A114BF5' ##NO_TEXT.
    DATA pattern TYPE string READ-ONLY.
    DATA error_message TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !pattern TYPE string OPTIONAL
      !error_message TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_regex IMPLEMENTATION.
ENDCLASS.