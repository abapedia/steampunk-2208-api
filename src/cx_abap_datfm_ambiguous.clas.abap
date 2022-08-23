CLASS cx_abap_datfm_ambiguous DEFINITION
  PUBLIC
  INHERITING FROM cx_abap_datfm
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_abap_datfm_ambiguous TYPE c LENGTH 32 VALUE '42E508EFD6CF7260E10000000A1146E5' ##NO_TEXT.
    DATA ambiguous_date TYPE cl_abap_datfm=>ty_datext.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !ambiguous_date TYPE cl_abap_datfm=>ty_datext OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_datfm_ambiguous IMPLEMENTATION.
ENDCLASS.