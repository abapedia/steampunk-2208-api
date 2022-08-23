CLASS xco_cp_table DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      field_property         TYPE REF TO cl_xco_cp_tab_field_property_f READ-ONLY,

      enhancement_category   TYPE REF TO cl_xco_tab_enhancement_ctgry_f READ-ONLY,

      foreign_key_field_type TYPE REF TO cl_xco_tab_fkey_field_type_f READ-ONLY,
      cardinality            TYPE REF TO cl_xco_tab_fkey_cardinality_f READ-ONLY,
      proposal               TYPE REF TO if_xco_cp_tab_psl_factory READ-ONLY.

ENDCLASS.

CLASS xco_cp_table IMPLEMENTATION.
ENDCLASS.