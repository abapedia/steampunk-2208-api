CLASS cl_xco_ar_selection_builder DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      array TYPE STANDARD TABLE OF REF TO cl_xco_ar_selection_builder WITH EMPTY KEY.

  PROTECTED SECTION.
    METHODS:
      add_join ABSTRACT
        IMPORTING
          iv_table          TYPE string
          iv_type_condition TYPE string
          iv_name_condition TYPE string,

      add_type_constraint ABSTRACT
        IMPORTING
          io_type_constraint TYPE REF TO cl_xco_asql_constraint,

      add_name_constraint ABSTRACT
        IMPORTING
          io_name_constraint TYPE REF TO cl_xco_asql_constraint,

      add_condition ABSTRACT
        IMPORTING
          io_condition TYPE REF TO not_released,

      clone ABSTRACT
        RETURNING
          VALUE(ro_selection_builder) TYPE REF TO cl_xco_ar_selection_builder,

      get_selection ABSTRACT
        RETURNING
          VALUE(ro_selection) TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_ar_selection_builder IMPLEMENTATION.
ENDCLASS.