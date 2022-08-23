CLASS cl_xco_dbt_data_maintenance_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      allowed                   TYPE REF TO cl_xco_dbt_data_maintenance READ-ONLY,
      not_allowed               TYPE REF TO cl_xco_dbt_data_maintenance READ-ONLY,
      allowed_with_restrictions TYPE REF TO cl_xco_dbt_data_maintenance READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_data_maintenance        TYPE cl_xco_dbt_data_maintenance=>tv_value
        RETURNING
          VALUE(ro_data_maintenance) TYPE REF TO cl_xco_dbt_data_maintenance.

ENDCLASS.

CLASS cl_xco_dbt_data_maintenance_f IMPLEMENTATION.
ENDCLASS.