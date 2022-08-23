CLASS cl_xco_cp_bal_lvl_of_dtl_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      one   TYPE REF TO cl_xco_bal_level_of_detail READ-ONLY,
      two   TYPE REF TO cl_xco_bal_level_of_detail READ-ONLY,
      three TYPE REF TO cl_xco_bal_level_of_detail READ-ONLY,
      four  TYPE REF TO cl_xco_bal_level_of_detail READ-ONLY,
      five  TYPE REF TO cl_xco_bal_level_of_detail READ-ONLY,
      six   TYPE REF TO cl_xco_bal_level_of_detail READ-ONLY,
      seven TYPE REF TO cl_xco_bal_level_of_detail READ-ONLY,
      eight TYPE REF TO cl_xco_bal_level_of_detail READ-ONLY,
      nine  TYPE REF TO cl_xco_bal_level_of_detail READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                  TYPE cl_xco_bal_level_of_detail=>tv_value
        RETURNING
          VALUE(ro_level_of_detail) TYPE REF TO cl_xco_bal_level_of_detail.

ENDCLASS.

CLASS cl_xco_cp_bal_lvl_of_dtl_f IMPLEMENTATION.
ENDCLASS.