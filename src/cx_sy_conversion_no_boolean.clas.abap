CLASS cx_sy_conversion_no_boolean DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS not_in_asx_format TYPE c LENGTH 32 VALUE '001560AA0E081DEB8AA9737478EF462E'. "#EC NOTEXT
    CONSTANTS cx_sy_conversion_no_boolean TYPE c LENGTH 32 VALUE '001560AA0E081DEB8AA8509EABB2882C'. "#EC NOTEXT
    DATA value TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_no_boolean IMPLEMENTATION.
ENDCLASS.