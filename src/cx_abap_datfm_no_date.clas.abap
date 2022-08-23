CLASS cx_abap_datfm_no_date DEFINITION
  PUBLIC
  INHERITING FROM cx_abap_datfm
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_abap_datfm_no_date TYPE c LENGTH 32 VALUE '00505695007C1DDFB5F0B00BAF4F1346' ##NO_TEXT.
    DATA no_date TYPE cl_abap_datfm=>ty_datext.
    DATA expected_date_format TYPE cl_abap_datfm=>ty_datfm.
    DATA is_period TYPE abap_bool VALUE abap_false ##NO_TEXT.
    DATA is_weeks TYPE abap_bool VALUE abap_false ##NO_TEXT.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !no_date TYPE cl_abap_datfm=>ty_datext OPTIONAL
      !expected_date_format TYPE cl_abap_datfm=>ty_datfm OPTIONAL
      !is_period TYPE abap_bool DEFAULT abap_false
      !is_weeks TYPE abap_bool DEFAULT abap_false.

    METHODS if_message~get_text
    REDEFINITION.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_datfm_no_date IMPLEMENTATION.
ENDCLASS.