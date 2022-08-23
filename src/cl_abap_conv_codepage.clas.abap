CLASS cl_abap_conv_codepage DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
      ty_repl_char TYPE c LENGTH 1.
    TYPES ty_sap_cp TYPE n LENGTH 4.

    CLASS-DATA default_replacement TYPE ty_repl_char VALUE '#' ##NO_TEXT.
    CLASS-METHODS create_in
      IMPORTING
      !codepage TYPE string DEFAULT `UTF-8`
      !replacement_char TYPE ty_repl_char OPTIONAL
      RETURNING
      VALUE(instance) TYPE REF TO if_abap_conv_in
      RAISING
      cx_parameter_invalid_range.
    CLASS-METHODS create_out
      IMPORTING
      !codepage TYPE string DEFAULT `UTF-8`
      !replacement_char TYPE ty_repl_char OPTIONAL
      RETURNING
      VALUE(instance) TYPE REF TO if_abap_conv_out
      RAISING
      cx_parameter_invalid_range.
    CLASS-METHODS create_in_from_sap_cp
      IMPORTING
      !sap_cp TYPE ty_sap_cp
      !replacement_char TYPE ty_repl_char OPTIONAL
      RETURNING
      VALUE(instance) TYPE REF TO if_abap_conv_in
      RAISING
      cx_sy_codepage_converter_init.
    CLASS-METHODS create_out_to_sap_cp
      IMPORTING
      !sap_cp TYPE ty_sap_cp
      !replacement_char TYPE ty_repl_char OPTIONAL
      RETURNING
      VALUE(instance) TYPE REF TO if_abap_conv_out
      RAISING
      cx_sy_codepage_converter_init.
    CLASS-METHODS get_sap_codepage
      IMPORTING
      !codepage TYPE string OPTIONAL
      RETURNING
      VALUE(sap_cp) TYPE ty_sap_cp
      RAISING
      cx_parameter_invalid_range.
    CLASS-METHODS get_http_name
      IMPORTING
      !sap_cp TYPE ty_sap_cp OPTIONAL
      RETURNING
      VALUE(http_name) TYPE string
      RAISING
      cx_parameter_invalid_range.
    CLASS-METHODS get_java_name
      IMPORTING
      !sap_cp TYPE ty_sap_cp OPTIONAL
      RETURNING
      VALUE(java_name) TYPE string
      RAISING
      cx_parameter_invalid_range.
ENDCLASS.

CLASS cl_abap_conv_codepage IMPLEMENTATION.
ENDCLASS.