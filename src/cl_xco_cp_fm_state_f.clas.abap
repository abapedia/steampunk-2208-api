CLASS cl_xco_cp_fm_state_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      list     TYPE cl_xco_fm_state=>list READ-ONLY,
      active   TYPE REF TO cl_xco_fm_state READ-ONLY,
      inactive TYPE REF TO cl_xco_fm_state READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value        TYPE cl_xco_fm_state=>tv_value
        RETURNING
          VALUE(ro_state) TYPE REF TO cl_xco_fm_state.

ENDCLASS.

CLASS cl_xco_cp_fm_state_f IMPLEMENTATION.
ENDCLASS.