CLASS xco_cp_table_type DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      access        TYPE REF TO cl_xco_tt_access_f READ-ONLY,
      key_access    TYPE REF TO cl_xco_tt_key_access_f READ-ONLY,
      key_category  TYPE REF TO cl_xco_tt_key_category_f READ-ONLY,

      primary_key   TYPE REF TO if_xco_tt_primary_key_factory READ-ONLY,
      secondary_key TYPE REF TO if_xco_tt_secondary_key_factry READ-ONLY.

ENDCLASS.

CLASS xco_cp_table_type IMPLEMENTATION.
ENDCLASS.