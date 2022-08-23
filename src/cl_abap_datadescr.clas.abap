CLASS cl_abap_datadescr DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_typedescr
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_abap_data_type_handle.
    CLASS-METHODS is_read_only
      IMPORTING
      !p_data TYPE REF TO data
      RETURNING
      VALUE(p_flag) TYPE abap_bool.
    METHODS applies_to_data
      IMPORTING
      !p_data TYPE data
      RETURNING
      VALUE(p_flag) TYPE abap_bool.
    METHODS applies_to_data_ref
      IMPORTING
      !p_data TYPE REF TO data
      RETURNING
      VALUE(p_flag) TYPE abap_bool.
    CLASS-METHODS get_data_type_kind
      IMPORTING
      !p_data TYPE data
      RETURNING
      VALUE(p_type_kind) TYPE abap_typekind.

    METHODS is_instantiatable
      REDEFINITION.
  PROTECTED SECTION.
ENDCLASS.

CLASS cl_abap_datadescr IMPLEMENTATION.
ENDCLASS.