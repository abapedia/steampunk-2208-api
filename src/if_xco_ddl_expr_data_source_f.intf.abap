INTERFACE if_xco_ddl_expr_data_source_f PUBLIC.
  METHODS:
    database_table
      IMPORTING
        iv_database_table         TYPE sxco_dbt_object_name
      RETURNING
        VALUE(ro_dbt_data_source) TYPE REF TO if_xco_ddl_expr_data_source,

    entity
      IMPORTING
        iv_entity                    TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_entity_data_source) TYPE REF TO if_xco_ddl_expr_data_source.
ENDINTERFACE.