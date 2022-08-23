CLASS cl_xco_abap_t_generic_factory DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      any            TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      any_table      TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      c              TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      clike          TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      csequence      TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      data           TYPE REF TO cl_xco_abap_t_g_data READ-ONLY,
      decfloat       TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      hashed_table   TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      index_table    TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      n              TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      numeric        TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      object         TYPE REF TO cl_xco_abap_t_g_object READ-ONLY,
      p              TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      simple         TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      sorted_table   TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      standard_table TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      table          TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      x              TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY,
      xsequence      TYPE REF TO cl_xco_abap_t_generic_data READ-ONLY.

ENDCLASS.

CLASS cl_xco_abap_t_generic_factory IMPLEMENTATION.
ENDCLASS.