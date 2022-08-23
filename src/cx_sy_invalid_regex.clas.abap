CLASS cx_sy_invalid_regex DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_regex
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_invalid_regex TYPE c LENGTH 32 VALUE '4251A57A21A757D0E10000000A1146EE' ##NO_TEXT.
    CONSTANTS pcre2_pattern_compile_error TYPE c LENGTH 32 VALUE '0050568C926F1EDA85EB7CD19F92092D' ##NO_TEXT.
    DATA offset TYPE int4.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !pattern TYPE string OPTIONAL
      !error_message TYPE string OPTIONAL
      !offset TYPE int4 OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_invalid_regex IMPLEMENTATION.
ENDCLASS.