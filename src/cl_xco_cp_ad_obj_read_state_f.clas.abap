CLASS cl_xco_cp_ad_obj_read_state_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      active_version TYPE REF TO cl_xco_ad_object_read_state READ-ONLY,
      newest_version TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_object_state             TYPE cl_xco_ad_object_read_state=>tv_value
        RETURNING
          VALUE(ro_object_read_state) TYPE REF TO cl_xco_ad_object_read_state.

ENDCLASS.

CLASS cl_xco_cp_ad_obj_read_state_f IMPLEMENTATION.
ENDCLASS.