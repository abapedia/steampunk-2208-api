CLASS cl_xco_dbt_delivery_class_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      a TYPE REF TO cl_xco_dbt_delivery_class READ-ONLY,
      c TYPE REF TO cl_xco_dbt_delivery_class READ-ONLY,
      l TYPE REF TO cl_xco_dbt_delivery_class READ-ONLY,
      g TYPE REF TO cl_xco_dbt_delivery_class READ-ONLY,
      e TYPE REF TO cl_xco_dbt_delivery_class READ-ONLY,
      s TYPE REF TO cl_xco_dbt_delivery_class READ-ONLY,
      w TYPE REF TO cl_xco_dbt_delivery_class READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_delivery_class        TYPE cl_xco_dbt_delivery_class=>tv_value
        RETURNING
          VALUE(ro_delivery_class) TYPE REF TO cl_xco_dbt_delivery_class.

ENDCLASS.

CLASS cl_xco_dbt_delivery_class_f IMPLEMENTATION.
ENDCLASS.