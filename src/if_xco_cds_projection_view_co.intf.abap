INTERFACE if_xco_cds_projection_view_co PUBLIC.
  TYPES:
    BEGIN OF ts_data_source,
      view_entity TYPE sxco_cds_object_name,
      alias       TYPE sxco_ddef_alias_name,
    END OF ts_data_source,

    BEGIN OF ts_content,
      short_description TYPE sxco_ar_short_description,
      data_source       TYPE ts_data_source,
      root_indicator    TYPE abap_bool,
      where             TYPE REF TO if_xco_ddl_expr_condition,
    END OF ts_content.

  DATA:
    projection_view TYPE REF TO if_xco_cds_projection_view READ-ONLY,

    read_state      TYPE REF TO cl_xco_ddef_object_read_state READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_data_source
      RETURNING
        VALUE(rs_data_source) TYPE ts_data_source,

    get_root_indicator
      RETURNING
        VALUE(rv_root_indicator) TYPE abap_bool,

    get_where
      RETURNING
        VALUE(ro_where) TYPE REF TO if_xco_ddl_expr_condition,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.