CLASS cl_xco_dbt_buffering_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      not_allowed              TYPE REF TO cl_xco_dbt_buffering READ-ONLY,
      allowed_but_switched_off TYPE REF TO cl_xco_dbt_buffering READ-ONLY,
      switched_on              TYPE REF TO cl_xco_dbt_buffering READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value            TYPE cl_xco_dbt_buffering=>tv_value
        RETURNING
          VALUE(ro_buffering) TYPE REF TO cl_xco_dbt_buffering.

ENDCLASS.

CLASS cl_xco_dbt_buffering_f IMPLEMENTATION.
ENDCLASS.