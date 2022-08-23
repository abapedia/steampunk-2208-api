CLASS cl_abap_refdescr DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_datadescr
  FINAL
  CREATE PROTECTED.

  PUBLIC SECTION.
    CLASS-METHODS create
      IMPORTING
      !p_referenced_type TYPE REF TO cl_abap_typedescr
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_refdescr
      RAISING
      cx_sy_ref_creation.
    CLASS-METHODS create_boxed
      IMPORTING
      !p_referenced_type TYPE REF TO cl_abap_structdescr
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_refdescr
      RAISING
      cx_sy_ref_creation.
    CLASS-METHODS create_boxed_by_name
      IMPORTING
      !p_referenced_type_name TYPE csequence
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_refdescr
      RAISING
      cx_sy_ref_creation
      cx_sy_unknown_type.
    CLASS-METHODS create_by_name
      IMPORTING
      !p_referenced_type_name TYPE csequence
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_refdescr
      RAISING
      cx_sy_ref_creation
      cx_sy_unknown_type.
    CLASS-METHODS get
      IMPORTING
      !p_referenced_type TYPE REF TO cl_abap_typedescr
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_refdescr
      RAISING
      cx_sy_ref_creation.
    CLASS-METHODS get_boxed
      IMPORTING
      !p_referenced_type TYPE REF TO cl_abap_structdescr
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_refdescr
      RAISING
      cx_sy_ref_creation.
    CLASS-METHODS get_boxed_by_name
      IMPORTING
      !p_referenced_type_name TYPE csequence
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_refdescr
      RAISING
      cx_sy_ref_creation
      cx_sy_unknown_type.
    CLASS-METHODS get_by_name
      IMPORTING
      !p_referenced_type_name TYPE csequence
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_refdescr
      RAISING
      cx_sy_ref_creation
      cx_sy_unknown_type.
    METHODS get_referenced_type
      RETURNING
      VALUE(p_descr_ref) TYPE REF TO cl_abap_typedescr.
    CLASS-METHODS get_ref_to_data
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_refdescr.
    CLASS-METHODS get_ref_to_object
      RETURNING
      VALUE(p_result) TYPE REF TO cl_abap_refdescr.
    CLASS-METHODS load_class.
  PROTECTED SECTION.

ENDCLASS.

CLASS cl_abap_refdescr IMPLEMENTATION.
ENDCLASS.