CLASS cl_abap_structdescr DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_complexdescr
  FINAL
  CREATE PROTECTED.

  PUBLIC SECTION.
    TYPES component TYPE abap_componentdescr.
    TYPES component_table TYPE abap_component_tab.
    TYPES symbol_table TYPE abap_component_symbol_tab.
    TYPES included_view TYPE abap_component_view_tab.
    DATA struct_kind TYPE abap_structkind READ-ONLY.
    CONSTANTS structkind_flat TYPE abap_structkind VALUE 'F' ##NO_TEXT.
    DATA components TYPE abap_compdescr_tab READ-ONLY.
    CONSTANTS structkind_nested TYPE abap_structkind VALUE 'N' ##NO_TEXT.
    CONSTANTS structkind_mesh TYPE abap_structkind VALUE 'M' ##NO_TEXT.
    DATA has_include TYPE abap_bool READ-ONLY.
    CLASS-METHODS load_class.
    METHODS get_ddic_field_list
      IMPORTING
      VALUE(p_langu) TYPE langu DEFAULT sy-langu
      !p_including_substructres TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(p_field_list) TYPE not_released_ttyp
      EXCEPTIONS
      not_found
      no_ddic_type.
    CLASS-METHODS get
      IMPORTING
      !p_components TYPE component_table
      !p_strict TYPE abap_bool DEFAULT true
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_structdescr
      RAISING
      cx_sy_struct_creation.
    CLASS-METHODS create
      IMPORTING
      !p_components TYPE component_table
      !p_strict TYPE abap_bool DEFAULT true
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_structdescr
      RAISING
      cx_sy_struct_creation.
    METHODS get_components
      RETURNING
      VALUE(p_result) TYPE component_table.
    METHODS get_included_view
      IMPORTING
      VALUE(p_level) TYPE i OPTIONAL
      RETURNING
      VALUE(p_result) TYPE included_view.
    METHODS get_symbols
      RETURNING
      VALUE(p_result) TYPE symbol_table.
    METHODS get_component_type
      IMPORTING
      !p_name TYPE any
      RETURNING
      VALUE(p_descr_ref) TYPE REF TO cl_abap_datadescr
      EXCEPTIONS
      component_not_found
      unsupported_input_type.
  PROTECTED SECTION.

ENDCLASS.

CLASS cl_abap_structdescr IMPLEMENTATION.
ENDCLASS.