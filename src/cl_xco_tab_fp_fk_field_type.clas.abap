CLASS cl_xco_tab_fp_fk_field_type DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    METHODS:
      get_filter
        IMPORTING
          io_field_type       TYPE REF TO cl_xco_tab_fkey_field_type
        RETURNING
          VALUE(ro_condition) TYPE REF TO if_xco_ar_filter.
ENDCLASS.

CLASS cl_xco_tab_fp_fk_field_type IMPLEMENTATION.
ENDCLASS.