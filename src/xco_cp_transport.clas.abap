CLASS xco_cp_transport DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      kind         TYPE REF TO cl_xco_tr_kind_f READ-ONLY,

      type         TYPE REF TO cl_xco_tr_type_f READ-ONLY,
      status       TYPE REF TO cl_xco_tr_status_f READ-ONLY,

      filter       TYPE REF TO if_xco_cp_tr_filter_factory READ-ONLY,
      resolution   TYPE REF TO cl_xco_cp_tr_resolution_fctry READ-ONLY,

      entries      TYPE REF TO if_xco_cp_tr_api_entries READ-ONLY,

      entry_filter TYPE REF TO if_xco_cp_tr_entry_filter_fct READ-ONLY.

ENDCLASS.

CLASS xco_cp_transport IMPLEMENTATION.
ENDCLASS.