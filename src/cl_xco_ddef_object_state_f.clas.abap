CLASS cl_xco_ddef_object_state_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      active         TYPE REF TO cl_xco_ddef_object_state READ-ONLY,
      revised        TYPE REF TO cl_xco_ddef_object_state READ-ONLY,
      new            TYPE REF TO cl_xco_ddef_object_state READ-ONLY,
      does_not_exist TYPE REF TO cl_xco_ddef_object_state READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_object_state        TYPE cl_xco_ddef_object_state=>tv_value
        RETURNING
          VALUE(ro_object_state) TYPE REF TO cl_xco_ddef_object_state.

ENDCLASS.

CLASS cl_xco_ddef_object_state_f IMPLEMENTATION.
ENDCLASS.