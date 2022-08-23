CLASS cx_amdp_execution_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  CREATE PRIVATE.

  PUBLIC SECTION.

    CONSTANTS:
      cx_amdp_execution_error TYPE c LENGTH 32 VALUE '005056A207C81EE4B0EA147E02940CA4' ##NO_TEXT.

    DATA:
      " SQL code from database
      sql_code               TYPE i READ-ONLY,
      " SQL message from database
      sql_message            TYPE string READ-ONLY,
      dbproc_class_incl_name TYPE string READ-ONLY,
      dbproc_meth_incl_name  TYPE string READ-ONLY,
      dbproc_abap_line       TYPE i READ-ONLY,
      dbproc_name            TYPE string,
      hints                  TYPE string.

    TYPES:
      BEGIN OF ty_amdp_stack,
        stack_entry    TYPE string,
        inline_entries TYPE string_table,
      END OF ty_amdp_stack,
      tt_amdp_stack TYPE STANDARD TABLE OF ty_amdp_stack WITH EMPTY KEY.

    METHODS:
      constructor
        IMPORTING
          textid                 LIKE textid OPTIONAL
          previous               LIKE previous OPTIONAL
          connection_name        TYPE string OPTIONAL
          top_dbproc_name        TYPE string OPTIONAL
          sql_code               TYPE i OPTIONAL
          sql_message            TYPE string OPTIONAL
          dbproc_class_incl_name TYPE string OPTIONAL
          dbproc_meth_incl_name  TYPE string OPTIONAL
          dbproc_abap_line       TYPE i OPTIONAL
          dbproc_name            TYPE string OPTIONAL,

      "---------------------------------------------------------------------------
      get_amdp_stack
        RETURNING
          VALUE(rt_dbproc_stack) TYPE tt_amdp_stack  ##RELAX.

  PROTECTED SECTION.
ENDCLASS.

CLASS cx_amdp_execution_error IMPLEMENTATION.
ENDCLASS.