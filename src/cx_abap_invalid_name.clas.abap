CLASS cx_abap_invalid_name DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_abap_invalid_name TYPE c LENGTH 32 VALUE '0050568E52B002EE91D34AA29B4B0B5C'. "#EC NOTEXT
    DATA name TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !name TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_invalid_name IMPLEMENTATION.
ENDCLASS.