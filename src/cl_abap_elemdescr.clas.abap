CLASS cl_abap_elemdescr DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_datadescr
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
  " Fixvalue is a type compatible to ddfixvalue
      BEGIN OF fixvalue,
      low        TYPE c LENGTH 10,
      high       TYPE c LENGTH 10,
      option     TYPE c LENGTH 2,
      ddlanguage TYPE c,
      ddtext     TYPE c LENGTH 60,
      END OF fixvalue.
    TYPES:
      fixvalues TYPE STANDARD TABLE OF fixvalue WITH DEFAULT KEY.
    CONSTANTS type_x_max_length TYPE i VALUE 524287 ##NO_TEXT.
    CONSTANTS type_c_max_length TYPE i VALUE 262143 ##NO_TEXT.
    CONSTANTS type_n_max_length TYPE i VALUE 262143 ##NO_TEXT.
    CONSTANTS type_p_max_length TYPE i VALUE 16 ##NO_TEXT.
    CONSTANTS type_p_max_decimals TYPE i VALUE 14 ##NO_TEXT.
    DATA edit_mask TYPE abap_editmask READ-ONLY.
    DATA help_id TYPE abap_helpid READ-ONLY.
    DATA output_length TYPE i READ-ONLY.
    CLASS-METHODS load_class.
    METHODS get_ddic_field
      IMPORTING
      VALUE(p_langu) TYPE langu DEFAULT sy-langu
      RETURNING
      VALUE(p_flddescr) TYPE not_released
      EXCEPTIONS
      not_found
      no_ddic_type.
    METHODS get_ddic_fixed_values
      IMPORTING
      VALUE(p_langu) TYPE langu DEFAULT sy-langu
      RETURNING
      VALUE(p_fixed_values) TYPE fixvalues
      EXCEPTIONS
      not_found
      no_ddic_type.
    CLASS-METHODS get_string
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr.
    CLASS-METHODS get_xstring
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr.
    CLASS-METHODS get_int1
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr.
    CLASS-METHODS get_int2
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr.
    CLASS-METHODS get_i
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr.
    CLASS-METHODS get_int8
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr.
    CLASS-METHODS get_f
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr.
    CLASS-METHODS get_decfloat16
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr.
    CLASS-METHODS get_decfloat34
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr.
    CLASS-METHODS get_d
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr.
    CLASS-METHODS get_t
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr.
    CLASS-METHODS get_c
      IMPORTING
      !p_length TYPE i
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr
      RAISING
      cx_parameter_invalid_range.
    CLASS-METHODS get_n
      IMPORTING
      !p_length TYPE i
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr
      RAISING
      cx_parameter_invalid_range.
    CLASS-METHODS get_x
      IMPORTING
      !p_length TYPE i
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr
      RAISING
      cx_parameter_invalid_range.
    CLASS-METHODS get_p
      IMPORTING
      !p_length TYPE i
      !p_decimals TYPE i
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr
      RAISING
      cx_parameter_invalid_range.
    CLASS-METHODS get_utclong
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr.
    CLASS-METHODS get_by_kind
      IMPORTING
      !p_type_kind TYPE abap_typekind
      !p_length TYPE i OPTIONAL
      !p_decimals TYPE i OPTIONAL
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_elemdescr
      RAISING
      cx_parameter_invalid_range.

    METHODS is_ddic_type
      REDEFINITION.
  PROTECTED SECTION.

ENDCLASS.

CLASS cl_abap_elemdescr IMPLEMENTATION.
ENDCLASS.