CLASS cx_sy_regex_locale_mismatch DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_matcher
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_regex_locale_mismatch TYPE c LENGTH 32 VALUE '4255051500980616E10000000A1146E6' ##NO_TEXT.
    DATA locale TYPE spras.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !pattern TYPE string OPTIONAL
      !locale TYPE spras OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_regex_locale_mismatch IMPLEMENTATION.
ENDCLASS.