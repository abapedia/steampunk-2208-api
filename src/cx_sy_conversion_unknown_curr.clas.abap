CLASS cx_sy_conversion_unknown_curr DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_conversion_unknown_curr TYPE c LENGTH 32 VALUE '005056913E2F1ED5A9B2EEDE058CD83A' ##NO_TEXT.
    DATA value TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_unknown_curr IMPLEMENTATION.
ENDCLASS.