CLASS cl_xco_tab_fkey_field_type_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      not_specified                TYPE REF TO cl_xco_tab_fkey_field_type READ-ONLY,
      non_key_fields_or_candidates TYPE REF TO cl_xco_tab_fkey_field_type READ-ONLY,
      key_fields_or_candidates     TYPE REF TO cl_xco_tab_fkey_field_type READ-ONLY,
      key_fields_of_text_table     TYPE REF TO cl_xco_tab_fkey_field_type READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                         TYPE cl_xco_tab_fkey_field_type=>tv_value
        RETURNING
          VALUE(ro_foreign_key_field_type) TYPE REF TO cl_xco_tab_fkey_field_type.

ENDCLASS.

CLASS cl_xco_tab_fkey_field_type_f IMPLEMENTATION.
ENDCLASS.