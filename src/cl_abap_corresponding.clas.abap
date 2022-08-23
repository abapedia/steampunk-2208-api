CLASS cl_abap_corresponding DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF mapping_info,
           level   TYPE i,
           kind    TYPE i,
           srcname TYPE string,
           dstname TYPE string,
         END OF mapping_info.
    TYPES:
      BEGIN OF mapping_info_values,
           level   TYPE i,
           kind    TYPE i,
           srcname TYPE string,
           dstname TYPE string,
           value   TYPE REF TO data,
         END OF mapping_info_values.
    TYPES:
      mapping_table TYPE STANDARD TABLE OF mapping_info WITH EMPTY KEY.
    TYPES:
      mapping_table_value TYPE STANDARD TABLE OF mapping_info_values WITH EMPTY KEY.

    CONSTANTS mapping_component TYPE i VALUE 1 ##NO_TEXT.
    CONSTANTS mapping_except_component TYPE i VALUE 2 ##NO_TEXT.
    CONSTANTS mapping_except_all TYPE i VALUE 3 ##NO_TEXT.
    CONSTANTS using_key TYPE i VALUE 4 ##NO_TEXT.
    CONSTANTS mapping_using_component TYPE i VALUE 5 ##NO_TEXT.
    CONSTANTS mapping_discarding_duplicates TYPE i VALUE 9 ##NO_TEXT.
    CONSTANTS mapping_value TYPE i VALUE 16 ##NO_TEXT.
    CONSTANTS mapping_default_value TYPE i VALUE 32 ##NO_TEXT.

    CLASS-METHODS create
      IMPORTING
      !source TYPE data
      !destination TYPE data
      !mapping TYPE mapping_table
      !discarding_duplicates TYPE sychar01 DEFAULT ' '
      RETURNING
      VALUE(mover) TYPE REF TO cl_abap_corresponding
      RAISING
      cx_corr_dyn_error.
    METHODS execute
      IMPORTING
      !source TYPE data
      !keeping_lines TYPE sychar01 DEFAULT ' '
      CHANGING
      !destination TYPE data
      RAISING
      cx_corr_dyn_error.
    CLASS-METHODS create_using
      IMPORTING
      !destination TYPE data
      !using TYPE data
      !mapping TYPE mapping_table
      RETURNING
      VALUE(mover) TYPE REF TO cl_abap_corresponding
      RAISING
      cx_corr_dyn_error.
    METHODS execute_using
      IMPORTING
      !using TYPE data
      CHANGING
      !destination TYPE data
      RAISING
      cx_corr_dyn_error.
    CLASS-METHODS create_with_value
      IMPORTING
      !source TYPE data
      !destination TYPE data
      !mapping TYPE mapping_table_value
      !discarding_duplicates TYPE sychar01 DEFAULT ' '
      RETURNING
      VALUE(mover) TYPE REF TO cl_abap_corresponding
      RAISING
      cx_corr_dyn_error.
ENDCLASS.

CLASS cl_abap_corresponding IMPLEMENTATION.
ENDCLASS.