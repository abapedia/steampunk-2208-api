CLASS cl_xco_tab_fkey_cardinality_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      one TYPE REF TO cl_xco_tab_fkey_cardinality_1 READ-ONLY,
      n   TYPE REF TO cl_xco_tab_fkey_cardinality_n READ-ONLY,
      c   TYPE REF TO cl_xco_tab_fkey_cardinality_c READ-ONLY,
      cn  TYPE REF TO cl_xco_tab_fkey_cardinality_cn READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                          TYPE cl_xco_tab_fkey_cardinality=>tv_value
        RETURNING
          VALUE(ro_foreign_key_cardinality) TYPE REF TO cl_xco_tab_fkey_cardinality.

ENDCLASS.

CLASS cl_xco_tab_fkey_cardinality_f IMPLEMENTATION.
ENDCLASS.