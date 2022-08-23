CLASS cx_sy_open_sql_data_error DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_open_sql_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    CONSTANTS illegal_data_type TYPE c LENGTH 32 VALUE '0050568C926F1EE9B3C496B171C9164D' ##NO_TEXT.
    CONSTANTS custom_session_var_undefined TYPE c LENGTH 32 VALUE '0894EF1643A01EDC839BB29BE86B1068' ##NO_TEXT.
    CONSTANTS data_loss TYPE c LENGTH 32 VALUE '0050568C926F1EE9B7DACE1D2F89E1A0' ##NO_TEXT.
    DATA value TYPE string READ-ONLY.
    DATA type TYPE abap_typekind READ-ONLY.
    DATA length TYPE i READ-ONLY.
    DATA decimals TYPE i READ-ONLY.
    DATA expected_type TYPE abap_typekind READ-ONLY.
    DATA name TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !sqlcode TYPE i OPTIONAL
      !sqlmsg TYPE string OPTIONAL
      !value TYPE string OPTIONAL
      !type TYPE abap_typekind OPTIONAL
      !length TYPE i OPTIONAL
      !decimals TYPE i OPTIONAL
      !expected_type TYPE abap_typekind OPTIONAL
      !name TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_open_sql_data_error IMPLEMENTATION.
ENDCLASS.