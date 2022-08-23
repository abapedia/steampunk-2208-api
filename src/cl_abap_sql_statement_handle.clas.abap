CLASS cl_abap_sql_statement_handle DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PROTECTED.

  PUBLIC SECTION.

    TYPES statement_kind_type TYPE i.

    CONSTANTS insert_statement TYPE statement_kind_type VALUE 1. "#EC NOTEXT
    CONSTANTS modify_statement TYPE statement_kind_type VALUE 2. "#EC NOTEXT
    CONSTANTS update_statement TYPE statement_kind_type VALUE 3. "#EC NOTEXT
    CONSTANTS select_single_statement TYPE statement_kind_type VALUE 4. "#EC NOTEXT

    METHODS get_statement_kind
      RETURNING
      VALUE(kind) TYPE statement_kind_type.
    METHODS is_closed
      ABSTRACT
      RETURNING
      VALUE(is_closed) TYPE abap_bool.
    METHODS close_all_streams
      FINAL
      RAISING
      cx_close_resource_error.
  PROTECTED SECTION.

    TYPES dbcon_name TYPE c LENGTH 30.

    DATA cursor_id TYPE i.

    CLASS-METHODS get_statement_hdl
      IMPORTING
      !stream TYPE REF TO object
      !lobhdl TYPE abap_msize
      EXPORTING
      !hdl TYPE REF TO cl_abap_sql_statement_handle
      !invalid TYPE abap_bool.
    CLASS-METHODS set_statement_hdl
      IMPORTING
      !hdl TYPE REF TO cl_abap_sql_statement_handle
      !stream TYPE REF TO object
      !lobhdl TYPE abap_msize
      EXPORTING
      !db_count TYPE i
      !kind TYPE statement_kind_type.
    METHODS constructor
      IMPORTING
      !con_name TYPE dbcon_name.
ENDCLASS.

CLASS cl_abap_sql_statement_handle IMPLEMENTATION.
ENDCLASS.