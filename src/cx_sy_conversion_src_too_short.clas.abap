CLASS cx_sy_conversion_src_too_short DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_conversion_src_too_short TYPE c LENGTH 32 VALUE '001560AA0E0802DC8FE0C474D632C212'. "#EC NOTEXT
    DATA source_length TYPE i READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !source_length TYPE i OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_src_too_short IMPLEMENTATION.
ENDCLASS.