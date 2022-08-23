INTERFACE if_xco_cds_union_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      data_source   TYPE sxco_cds_object_name,
      all_indicator TYPE abap_bool,
      alias         TYPE sxco_ddef_alias_name,
      where         TYPE REF TO if_xco_ddl_expr_condition,
    END OF ts_content.

  DATA:
    union      TYPE REF TO if_xco_cds_union READ-ONLY,

    read_state TYPE REF TO cl_xco_ddef_object_read_state READ-ONLY.

  METHODS:
    get_data_source
      RETURNING
        VALUE(rv_data_source) TYPE sxco_cds_object_name,

    get_all_indicator
      RETURNING
        VALUE(rv_all_indicator) TYPE abap_bool,

    get_alias
      RETURNING
        VALUE(rv_alias) TYPE sxco_ddef_alias_name,

    get_where
      RETURNING
        VALUE(ro_where) TYPE REF TO if_xco_ddl_expr_condition,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.