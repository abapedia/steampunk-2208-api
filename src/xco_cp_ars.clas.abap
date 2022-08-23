CLASS xco_cp_ars DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      release_contract TYPE REF TO cl_xco_cp_ars_release_cntrct_f READ-ONLY,

      release_state    TYPE REF TO cl_xco_cp_ars_release_state_f READ-ONLY,
      visibility       TYPE REF TO cl_xco_cp_ars_visibility_f READ-ONLY,

      api_state        TYPE REF TO cl_xco_cp_ars_api_state_fctry READ-ONLY.

ENDCLASS.

CLASS xco_cp_ars IMPLEMENTATION.
ENDCLASS.