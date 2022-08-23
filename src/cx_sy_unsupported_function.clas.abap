CLASS cx_sy_unsupported_function DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_arithmetic_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_unsupported_function TYPE c LENGTH 32 VALUE '001560AA0E081DEB89DB444182E28D47'. "#EC NOTEXT

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !operation TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_unsupported_function IMPLEMENTATION.
ENDCLASS.