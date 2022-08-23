CLASS cl_xco_cp_ars_release_state_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      not_released                 TYPE REF TO cl_xco_ars_release_state READ-ONLY,
      released                     TYPE REF TO cl_xco_ars_release_state READ-ONLY,
      deprecated                   TYPE REF TO cl_xco_ars_release_state READ-ONLY,
      released_with_feature_toggle TYPE REF TO cl_xco_ars_release_state READ-ONLY.

ENDCLASS.

CLASS cl_xco_cp_ars_release_state_f IMPLEMENTATION.
ENDCLASS.