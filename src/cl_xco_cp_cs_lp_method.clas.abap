CLASS cl_xco_cp_cs_lp_method DEFINITION PUBLIC FINAL INHERITING FROM cl_xco_cs_line_pattern CREATE PRIVATE.
  PUBLIC SECTION.
    METHODS:
      where_class_name_equals
        IMPORTING
          iv_class_name TYPE sxco_ao_object_name
        RETURNING
          VALUE(ro_me)  TYPE REF TO cl_xco_cp_cs_lp_method,
      where_class_name_starts_with
        IMPORTING
          iv_class_name_prefix TYPE sxco_ao_object_name
        RETURNING
          VALUE(ro_me)         TYPE REF TO cl_xco_cp_cs_lp_method,
      where_class_name_matches
        IMPORTING
          iv_class_name_pattern        TYPE string
          io_regular_expression_engine TYPE REF TO if_xco_regex_engine OPTIONAL
        RETURNING
          VALUE(ro_me)                 TYPE REF TO cl_xco_cp_cs_lp_method.

ENDCLASS.

CLASS cl_xco_cp_cs_lp_method IMPLEMENTATION.
ENDCLASS.