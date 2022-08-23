CLASS cl_badi_base DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES:
      classname TYPE c LENGTH 30.

    CLASS-METHODS translate_exception
      IMPORTING
      !excp TYPE REF TO cx_sy_dyn_call_error
      RAISING
      cx_sy_dyn_call_error.
    CLASS-METHODS get_dyn_instance
      IMPORTING
      !badi_name TYPE csequence
      !filter_table TYPE badi_filter_bindings OPTIONAL
      !ctx TYPE REF TO if_badi_context OPTIONAL
      RETURNING
      VALUE(proxy) TYPE REF TO cl_badi_base
      RAISING
      cx_sy_dyn_call_error.
    CLASS-METHODS interface
      IMPORTING
      !method TYPE csequence
      RETURNING
      VALUE(interface) TYPE classname.
  PROTECTED SECTION.
ENDCLASS.

CLASS cl_badi_base IMPLEMENTATION.
ENDCLASS.