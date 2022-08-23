CLASS cx_abap_not_an_integer DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_abap_not_an_integer TYPE c LENGTH 32 VALUE '0050568E52B002EE91D2F4CDB7D348BF'. "#EC NOTEXT
    DATA value TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_not_an_integer IMPLEMENTATION.
ENDCLASS.