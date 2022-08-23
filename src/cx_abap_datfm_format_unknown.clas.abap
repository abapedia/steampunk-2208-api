CLASS cx_abap_datfm_format_unknown DEFINITION
  PUBLIC
  INHERITING FROM cx_abap_datfm
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_abap_datfm_format_unknown TYPE c LENGTH 32 VALUE '42E50898D6CF7260E10000000A1146E5' ##NO_TEXT.
    DATA datfm TYPE cl_abap_datfm=>ty_datfm.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !datfm TYPE cl_abap_datfm=>ty_datfm OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_datfm_format_unknown IMPLEMENTATION.
ENDCLASS.