CLASS cx_abap_invalid_value DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_abap_invalid_value TYPE c LENGTH 32 VALUE '005056A207C81ED1B4CCAC6CAB348EB9'. "#EC NOTEXT
    DATA value TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_invalid_value IMPLEMENTATION.
ENDCLASS.