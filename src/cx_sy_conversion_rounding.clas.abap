CLASS cx_sy_conversion_rounding DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_conversion_rounding TYPE c LENGTH 32 VALUE '001560AA0E081DEB93DE95FB66C289FD'. "#EC NOTEXT
    DATA value TYPE string READ-ONLY.
    DATA operation TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !value TYPE string OPTIONAL
      !operation TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_rounding IMPLEMENTATION.
ENDCLASS.