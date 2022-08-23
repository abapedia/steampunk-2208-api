CLASS cx_abap_not_a_table DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_abap_not_a_table TYPE c LENGTH 32 VALUE '0050568E52B002DE91D34EB4DEC2D1FE'. "#EC NOTEXT
    DATA value TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_not_a_table IMPLEMENTATION.
ENDCLASS.