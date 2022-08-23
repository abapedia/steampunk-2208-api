CLASS cl_xco_tt_access_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      standard_table TYPE REF TO cl_xco_tt_access READ-ONLY,
      sorted_table   TYPE REF TO cl_xco_tt_access READ-ONLY,
      hashed_table   TYPE REF TO cl_xco_tt_access READ-ONLY,
      any_table      TYPE REF TO cl_xco_tt_access READ-ONLY,
      index_table    TYPE REF TO cl_xco_tt_access READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value         TYPE cl_xco_tt_access=>tv_value
        RETURNING
          VALUE(ro_access) TYPE REF TO cl_xco_tt_access.

ENDCLASS.

CLASS cl_xco_tt_access_f IMPLEMENTATION.
ENDCLASS.