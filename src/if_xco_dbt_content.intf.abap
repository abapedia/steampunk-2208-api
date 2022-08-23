INTERFACE if_xco_dbt_content PUBLIC.
  TYPES:
    BEGIN OF ts_technical_settings,
      data_class     TYPE REF TO cl_xco_dbt_data_class,
      size_category  TYPE REF TO cl_xco_dbt_size_category,
      buffering      TYPE REF TO cl_xco_dbt_buffering,
      buffering_type TYPE REF TO cl_xco_dbt_buffering_type,
    END OF ts_technical_settings,

    BEGIN OF ts_content,
      short_description    TYPE sxco_ar_short_description,
      enhancement_category TYPE REF TO cl_xco_tab_enhancement_ctgry,
      delivery_class       TYPE REF TO cl_xco_dbt_delivery_class,
      data_maintenance     TYPE REF TO cl_xco_dbt_data_maintenance,
      includes             TYPE sxco_t_tab_include,
      technical_settings   TYPE ts_technical_settings,
    END OF ts_content.

  DATA:
    database_table TYPE REF TO if_xco_database_table READ-ONLY,
    read_state     TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_short_description
      IMPORTING
        io_origin                   TYPE REF TO cl_xco_dbt_origin OPTIONAL
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,
    get_enhancement_category
      IMPORTING
        io_origin                      TYPE REF TO cl_xco_dbt_origin OPTIONAL
      RETURNING
        VALUE(ro_enhancement_category) TYPE REF TO cl_xco_tab_enhancement_ctgry,
    get_delivery_class
      IMPORTING
        io_origin                TYPE REF TO cl_xco_dbt_origin OPTIONAL
      RETURNING
        VALUE(ro_delivery_class) TYPE REF TO cl_xco_dbt_delivery_class,
    get_data_maintenance
      IMPORTING
        io_origin                  TYPE REF TO cl_xco_dbt_origin OPTIONAL
      RETURNING
        VALUE(ro_data_maintenance) TYPE REF TO cl_xco_dbt_data_maintenance,
    get_includes
      IMPORTING
        io_origin          TYPE REF TO cl_xco_dbt_origin OPTIONAL
      RETURNING
        VALUE(rt_includes) TYPE sxco_t_tab_include,
    get_technical_settings
      IMPORTING
        io_origin                    TYPE REF TO cl_xco_dbt_origin OPTIONAL
      RETURNING
        VALUE(rs_technical_settings) TYPE ts_technical_settings,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_dbt_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.