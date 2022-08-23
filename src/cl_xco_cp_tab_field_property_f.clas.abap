CLASS cl_xco_cp_tab_field_property_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      foreign_key_check_table TYPE REF TO cl_xco_tab_fp_fk_check_table READ-ONLY,
      foreign_key_field_type  TYPE REF TO cl_xco_tab_fp_fk_field_type READ-ONLY.

ENDCLASS.

CLASS cl_xco_cp_tab_field_property_f IMPLEMENTATION.
ENDCLASS.