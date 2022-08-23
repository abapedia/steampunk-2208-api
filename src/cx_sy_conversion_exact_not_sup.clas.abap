CLASS cx_sy_conversion_exact_not_sup DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_conversion_exact_not_sup TYPE c LENGTH 32 VALUE '001560AA0E0802DBA49B7BAEBE1807F5'. "#EC NOTEXT

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_exact_not_sup IMPLEMENTATION.
ENDCLASS.