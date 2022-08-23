CLASS cl_xco_dbt_size_category_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      zero  TYPE REF TO cl_xco_dbt_size_category READ-ONLY,
      one   TYPE REF TO cl_xco_dbt_size_category READ-ONLY,
      two   TYPE REF TO cl_xco_dbt_size_category READ-ONLY,
      three TYPE REF TO cl_xco_dbt_size_category READ-ONLY,
      four  TYPE REF TO cl_xco_dbt_size_category READ-ONLY,
      five  TYPE REF TO cl_xco_dbt_size_category READ-ONLY,
      six   TYPE REF TO cl_xco_dbt_size_category READ-ONLY,
      seven TYPE REF TO cl_xco_dbt_size_category READ-ONLY,
      eight TYPE REF TO cl_xco_dbt_size_category READ-ONLY,
      nine  TYPE REF TO cl_xco_dbt_size_category READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_size_category        TYPE cl_xco_dbt_size_category=>tv_value
        RETURNING
          VALUE(ro_size_category) TYPE REF TO cl_xco_dbt_size_category.

ENDCLASS.

CLASS cl_xco_dbt_size_category_f IMPLEMENTATION.
ENDCLASS.