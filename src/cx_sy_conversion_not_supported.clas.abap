CLASS cx_sy_conversion_not_supported DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_conversion_not_supported TYPE c LENGTH 32 VALUE '005056913E2F1EE99B9D190A5410D27B' ##NO_TEXT.
    DATA src TYPE string.
    DATA dst TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !src TYPE string OPTIONAL
      !dst TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_not_supported IMPLEMENTATION.
ENDCLASS.