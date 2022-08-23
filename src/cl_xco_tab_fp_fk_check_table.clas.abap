CLASS cl_xco_tab_fp_fk_check_table DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    METHODS:
      get_filter
        IMPORTING
          io_constraint       TYPE REF TO cl_xco_asql_constraint
        RETURNING
          VALUE(ro_condition) TYPE REF TO if_xco_ar_filter.
ENDCLASS.

CLASS cl_xco_tab_fp_fk_check_table IMPLEMENTATION.
ENDCLASS.