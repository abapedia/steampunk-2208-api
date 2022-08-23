INTERFACE if_xco_ar_tabl_dbt_obj_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                  TYPE sxco_dbt_object_name
      RETURNING
        VALUE(ro_database_table) TYPE REF TO if_xco_database_table.
ENDINTERFACE.