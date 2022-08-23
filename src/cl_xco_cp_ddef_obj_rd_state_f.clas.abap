CLASS cl_xco_cp_ddef_obj_rd_state_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      active TYPE REF TO cl_xco_ddef_object_read_state READ-ONLY,
      latest TYPE REF TO cl_xco_ddef_object_read_state READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_object_read_state        TYPE cl_xco_ddef_object_read_state=>tv_value
        RETURNING
          VALUE(ro_object_read_state) TYPE REF TO cl_xco_ddef_object_read_state.

ENDCLASS.

CLASS cl_xco_cp_ddef_obj_rd_state_f IMPLEMENTATION.
ENDCLASS.