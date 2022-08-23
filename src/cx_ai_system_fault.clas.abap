CLASS cx_ai_system_fault DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_ai_system_fault TYPE c LENGTH 32 VALUE 'F63AFF63DBE4BB4786A7F52CC4167145'. "#EC NOTEXT
    DATA codecontext TYPE string.
    DATA code TYPE string.
    DATA errortext TYPE string.
    DATA language TYPE cl_abap_context_info=>ty_language_key.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !codecontext TYPE string OPTIONAL
      !code TYPE string OPTIONAL
      !errortext TYPE string OPTIONAL
      !language TYPE cl_abap_context_info=>ty_language_key OPTIONAL.

    METHODS if_message~get_text
    REDEFINITION.
    METHODS if_message~get_longtext
    REDEFINITION.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_ai_system_fault IMPLEMENTATION.
ENDCLASS.