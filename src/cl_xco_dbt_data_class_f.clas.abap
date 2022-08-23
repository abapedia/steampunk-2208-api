CLASS cl_xco_dbt_data_class_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      appl0 TYPE REF TO cl_xco_dbt_data_class READ-ONLY,
      appl1 TYPE REF TO cl_xco_dbt_data_class READ-ONLY,
      appl2 TYPE REF TO cl_xco_dbt_data_class READ-ONLY,
      ddim  TYPE REF TO cl_xco_dbt_data_class READ-ONLY,
      dfact TYPE REF TO cl_xco_dbt_data_class READ-ONLY,
      dods  TYPE REF TO cl_xco_dbt_data_class READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_data_class        TYPE cl_xco_dbt_data_class=>tv_value
        RETURNING
          VALUE(ro_data_class) TYPE REF TO cl_xco_dbt_data_class.

ENDCLASS.

CLASS cl_xco_dbt_data_class_f IMPLEMENTATION.
ENDCLASS.