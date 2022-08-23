CLASS cl_xco_dbt_buffering_type_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      no_buffering            TYPE REF TO cl_xco_dbt_buffering_type READ-ONLY,
      single_record_buffering TYPE REF TO cl_xco_dbt_buffering_type READ-ONLY,
      generic_area_buffering  TYPE REF TO cl_xco_dbt_buffering_type READ-ONLY,
      full_buffering          TYPE REF TO cl_xco_dbt_buffering_type READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_buffering_type        TYPE cl_xco_dbt_buffering_type=>tv_value
        RETURNING
          VALUE(ro_buffering_type) TYPE REF TO cl_xco_dbt_buffering_type.

ENDCLASS.

CLASS cl_xco_dbt_buffering_type_f IMPLEMENTATION.
ENDCLASS.