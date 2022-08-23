CLASS cl_abap_typedescr DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA absolute_name TYPE abap_abstypename READ-ONLY.
    DATA decimals TYPE i READ-ONLY.
    CONSTANTS false TYPE abap_bool VALUE abap_false ##NO_TEXT.
    DATA kind TYPE abap_typecategory READ-ONLY.
    DATA length TYPE i READ-ONLY.
    DATA type_kind TYPE abap_typekind READ-ONLY.
    CONSTANTS kind_class TYPE abap_typecategory VALUE 'C' ##NO_TEXT.
    CONSTANTS kind_elem TYPE abap_typecategory VALUE 'E' ##NO_TEXT.
    CONSTANTS kind_intf TYPE abap_typecategory VALUE 'I' ##NO_TEXT.
    CONSTANTS kind_ref TYPE abap_typecategory VALUE 'R' ##NO_TEXT.
    CONSTANTS kind_struct TYPE abap_typecategory VALUE 'S' ##NO_TEXT.
    CONSTANTS kind_table TYPE abap_typecategory VALUE 'T' ##NO_TEXT.
    CONSTANTS true TYPE abap_bool VALUE abap_true ##NO_TEXT.
    CONSTANTS typekind_any TYPE abap_typekind VALUE '~' ##NO_TEXT.
    CONSTANTS typekind_char TYPE abap_typekind VALUE 'C' ##NO_TEXT.
    CONSTANTS typekind_class TYPE abap_typekind VALUE '*' ##NO_TEXT.
    CONSTANTS typekind_clike TYPE abap_typekind VALUE '&' ##NO_TEXT.
    CONSTANTS typekind_csequence TYPE abap_typekind VALUE '?' ##NO_TEXT.
    CONSTANTS typekind_data TYPE abap_typekind VALUE '#' ##NO_TEXT.
    CONSTANTS typekind_date TYPE abap_typekind VALUE 'D' ##NO_TEXT.
    CONSTANTS typekind_decfloat TYPE abap_typekind VALUE '/' ##NO_TEXT.
    CONSTANTS typekind_decfloat16 TYPE abap_typekind VALUE 'a' ##NO_TEXT.
    CONSTANTS typekind_decfloat34 TYPE abap_typekind VALUE 'e' ##NO_TEXT.
    CONSTANTS typekind_dref TYPE abap_typekind VALUE 'l' ##NO_TEXT.
    CONSTANTS typekind_float TYPE abap_typekind VALUE 'F' ##NO_TEXT.
    CONSTANTS typekind_hex TYPE abap_typekind VALUE 'X' ##NO_TEXT.
    CONSTANTS typekind_int TYPE abap_typekind VALUE 'I' ##NO_TEXT.
    CONSTANTS typekind_int1 TYPE abap_typekind VALUE 'b' ##NO_TEXT.
    CONSTANTS typekind_int8 TYPE abap_typekind VALUE '8' ##NO_TEXT.
    CONSTANTS typekind_int2 TYPE abap_typekind VALUE 's' ##NO_TEXT.
    CONSTANTS typekind_intf TYPE abap_typekind VALUE '+' ##NO_TEXT.
    CONSTANTS typekind_iref TYPE abap_typekind VALUE 'm' ##NO_TEXT.
    CONSTANTS typekind_num TYPE abap_typekind VALUE 'N' ##NO_TEXT.
    CONSTANTS typekind_numeric TYPE abap_typekind VALUE '%' ##NO_TEXT.
    CONSTANTS typekind_oref TYPE abap_typekind VALUE 'r' ##NO_TEXT.
    CONSTANTS typekind_packed TYPE abap_typekind VALUE 'P' ##NO_TEXT.
    CONSTANTS typekind_simple TYPE abap_typekind VALUE '$' ##NO_TEXT.
    CONSTANTS typekind_string TYPE abap_typekind VALUE 'g' ##NO_TEXT.
    CONSTANTS typekind_struct1 TYPE abap_typekind VALUE 'u' ##NO_TEXT.
    CONSTANTS typekind_struct2 TYPE abap_typekind VALUE 'v' ##NO_TEXT.
    CONSTANTS typekind_table TYPE abap_typekind VALUE 'h' ##NO_TEXT.
    CONSTANTS typekind_time TYPE abap_typekind VALUE 'T' ##NO_TEXT.
    CONSTANTS typekind_utclong TYPE abap_typekind VALUE 'p' ##NO_TEXT.
    CONSTANTS typekind_w TYPE abap_typekind VALUE 'w' ##NO_TEXT.
    CONSTANTS typekind_xsequence TYPE abap_typekind VALUE '!' ##NO_TEXT.
    CONSTANTS typekind_xstring TYPE abap_typekind VALUE 'y' ##NO_TEXT.
    CONSTANTS typekind_bref TYPE abap_typekind VALUE 'j' ##NO_TEXT.
    CONSTANTS typekind_enum TYPE abap_typekind VALUE 'k' ##NO_TEXT.
    CONSTANTS typepropkind_dbmaxlen TYPE abap_typepropkind VALUE 'D' ##NO_TEXT.
    CONSTANTS typepropkind_hasclient TYPE abap_typepropkind VALUE 'C' ##NO_TEXT.
    CONSTANTS undefined TYPE abap_bool VALUE abap_undefined ##NO_TEXT.
    CLASS-METHODS describe_by_data
      IMPORTING
      !p_data TYPE any
      RETURNING
      VALUE(p_descr_ref) TYPE REF TO cl_abap_typedescr.
    CLASS-METHODS describe_by_name
      IMPORTING
      !p_name TYPE any
      RETURNING
      VALUE(p_descr_ref) TYPE REF TO cl_abap_typedescr
      EXCEPTIONS
      type_not_found.
    CLASS-METHODS describe_by_object_ref
      IMPORTING
      !p_object_ref TYPE REF TO object
      RETURNING
      VALUE(p_descr_ref) TYPE REF TO cl_abap_typedescr
      EXCEPTIONS
      reference_is_initial.
    CLASS-METHODS describe_by_data_ref
      IMPORTING
      !p_data_ref TYPE REF TO data
      RETURNING
      VALUE(p_descr_ref) TYPE REF TO cl_abap_typedescr
      EXCEPTIONS
      reference_is_initial.
    METHODS get_property
      IMPORTING
      !p_property_kind TYPE abap_typepropkind
      RETURNING
      VALUE(p_value) TYPE REF TO data.
    METHODS get_relative_name
      RETURNING
      VALUE(p_relative_name) TYPE string.
    METHODS is_ddic_type
      RETURNING
      VALUE(p_abap_bool) TYPE abap_bool.
    METHODS get_ddic_header
      RETURNING
      VALUE(p_header) TYPE not_released
      EXCEPTIONS
      not_found
      no_ddic_type.
    METHODS get_ddic_object
      RETURNING
      VALUE(p_object) TYPE not_released_ttyp
      EXCEPTIONS
      not_found
      no_ddic_type.
    METHODS has_property
      IMPORTING
      !p_property_kind TYPE abap_typepropkind
      RETURNING
      VALUE(p_abap_bool) TYPE abap_bool.
    METHODS is_instantiatable
      ABSTRACT
      RETURNING
      VALUE(p_result) TYPE abap_bool.
  PROTECTED SECTION.

    TYPES:
      BEGIN OF xtype_type,
      i1 TYPE i,
      i2 TYPE i,
      END   OF xtype_type.
    CONSTANTS kind_enum TYPE abap_typecategory VALUE 'e' ##NO_TEXT.
ENDCLASS.

CLASS cl_abap_typedescr IMPLEMENTATION.
ENDCLASS.