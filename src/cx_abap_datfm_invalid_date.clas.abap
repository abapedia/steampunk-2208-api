CLASS cx_abap_datfm_invalid_date DEFINITION
  PUBLIC
  INHERITING FROM cx_abap_datfm
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_abap_datfm_invalid_date TYPE c LENGTH 32 VALUE '42E77505469C2AC7E10000000A1146E5' ##NO_TEXT.
    DATA invalid_date TYPE cl_abap_datfm=>ty_datext.
    DATA is_period TYPE abap_bool.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !invalid_date TYPE cl_abap_datfm=>ty_datext OPTIONAL
      !is_period TYPE abap_bool OPTIONAL.

    METHODS if_message~get_text
    REDEFINITION.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_datfm_invalid_date IMPLEMENTATION.
ENDCLASS.