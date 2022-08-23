INTERFACE if_xco_dbt_cacheable_origin PUBLIC.
  METHODS:
    enable_caching
      IMPORTING
        iv_database_table_name TYPE sxco_dbt_object_name OPTIONAL
        io_read_state          TYPE REF TO cl_xco_ad_object_read_state OPTIONAL,
    disable_caching
      IMPORTING
        iv_database_table_name TYPE sxco_dbt_object_name OPTIONAL
        io_read_state          TYPE REF TO cl_xco_ad_object_read_state OPTIONAL.
ENDINTERFACE.