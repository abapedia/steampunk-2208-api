CLASS cx_abap_not_a_program DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_abap_not_a_program TYPE c LENGTH 32 VALUE '005056AA0E031ED6BB904AB80CE860F1' ##NO_TEXT.
    DATA value TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_not_a_program IMPLEMENTATION.
ENDCLASS.