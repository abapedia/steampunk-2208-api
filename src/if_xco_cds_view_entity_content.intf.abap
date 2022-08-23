INTERFACE if_xco_cds_view_entity_content PUBLIC.
  TYPES:
    BEGIN OF ts_data_source,
      view_entity       TYPE sxco_cds_object_name,
      parameters        TYPE sxco_t_cds_ds_parameter,
      alias             TYPE sxco_ddef_alias_name,
      inner_joins       TYPE not_released_ttyp,
      left_outer_joins  TYPE not_released_ttyp,
      right_outer_joins TYPE not_released_ttyp,
    END OF ts_data_source,

    BEGIN OF ts_content,
      short_description TYPE sxco_ar_short_description,
      data_source       TYPE ts_data_source,
      root_indicator    TYPE abap_bool,
      name_list         TYPE sxco_t_cds_field_names,
      where             TYPE REF TO if_xco_ddl_expr_condition,
      group_by          TYPE not_released_ttyp,
    END OF ts_content.

  DATA:
    view_entity TYPE REF TO if_xco_cds_view_entity READ-ONLY,

    read_state  TYPE REF TO cl_xco_ddef_object_read_state READ-ONLY.

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

    get_name_list
      RETURNING
        VALUE(rt_name_list) TYPE sxco_t_cds_field_names,

    get_where
      RETURNING
        VALUE(ro_where) TYPE REF TO if_xco_ddl_expr_condition,

    get_group_by
      RETURNING
        VALUE(rt_group_by) TYPE sxco_t_gen_ddls_ddl_exprs,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.