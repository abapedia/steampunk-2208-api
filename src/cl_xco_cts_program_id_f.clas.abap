CLASS cl_xco_cts_program_id_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      r3tr TYPE REF TO cl_xco_cts_program_id READ-ONLY,
      limu TYPE REF TO cl_xco_cts_program_id READ-ONLY,
      lang TYPE REF TO cl_xco_cts_program_id READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value             TYPE cl_xco_cts_program_id=>tv_value
        RETURNING
          VALUE(ro_program_id) TYPE REF TO cl_xco_cts_program_id.

ENDCLASS.

CLASS cl_xco_cts_program_id_f IMPLEMENTATION.
ENDCLASS.