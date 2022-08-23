CLASS cx_abap_not_in_whitelist DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_abap_not_in_whitelist TYPE c LENGTH 32 VALUE '0050568E52B002DE91D3683A74B20B3B' ##NO_TEXT.
    DATA value TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_not_in_whitelist IMPLEMENTATION.
ENDCLASS.