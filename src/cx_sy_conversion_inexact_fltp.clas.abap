CLASS cx_sy_conversion_inexact_fltp DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_conversion_inexact_fltp TYPE c LENGTH 32 VALUE '001560AA0E0802DC828088B6CD2D04D5'. "#EC NOTEXT
    DATA value TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_inexact_fltp IMPLEMENTATION.
ENDCLASS.