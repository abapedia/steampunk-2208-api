CLASS cx_sy_operation_failure DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_arithmetic_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_operation_failure TYPE c LENGTH 32 VALUE '001560AA0E081DEB89DB220ADEA39971'. "#EC NOTEXT
    DATA parameter TYPE string.
    DATA value TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !operation TYPE string OPTIONAL
      !parameter TYPE string OPTIONAL
      !value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_operation_failure IMPLEMENTATION.
ENDCLASS.