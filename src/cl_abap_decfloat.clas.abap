CLASS cl_abap_decfloat DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS parse_ok TYPE i VALUE 0. "#EC NOTEXT
    CONSTANTS parse_inexact TYPE i VALUE 10. "#EC NOTEXT
    CONSTANTS parse_underflow TYPE i VALUE 11. "#EC NOTEXT

    CLASS-METHODS read_decfloat34
      IMPORTING
      !string TYPE csequence
      EXPORTING
      !value TYPE decfloat34
      !rc TYPE i
      RAISING
      cx_sy_conversion_overflow
      cx_abap_decfloat_invalid_char
      cx_abap_decfloat_parse_err.
    CLASS-METHODS read_decfloat16
      IMPORTING
      VALUE(string) TYPE csequence
      EXPORTING
      !value TYPE decfloat16
      !rc TYPE i
      RAISING
      cx_sy_conversion_overflow
      cx_abap_decfloat_invalid_char
      cx_abap_decfloat_parse_err.
    CLASS-METHODS convert_curr_to_decfloat
      IMPORTING
      !amount_curr TYPE p
      !cuky TYPE sycurr
      RETURNING
      VALUE(amount_decfloat) TYPE decfloat34.

    CLASS-METHODS convert_decfloat_to_curr
      IMPORTING
      !amount_decfloat TYPE decfloat
      !cuky TYPE sycurr
      EXPORTING
      !amount_curr TYPE p
      !rounded TYPE abap_bool
      RAISING
      cx_sy_conversion_overflow.
    CLASS-METHODS get_decimal_places_for_cuky
      IMPORTING
      !cuky TYPE sycurr
      RETURNING
      VALUE(decimal_places) TYPE int1.
ENDCLASS.

CLASS cl_abap_decfloat IMPLEMENTATION.
ENDCLASS.