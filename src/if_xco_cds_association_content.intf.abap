INTERFACE if_xco_cds_association_content PUBLIC.
  TYPES:
    BEGIN OF ts_cardinality,
      min TYPE i,
      max TYPE i,
    END OF ts_cardinality,

    BEGIN OF ts_content,
      target              TYPE sxco_cds_object_name,
      cardinality         TYPE ts_cardinality,
      to_parent_indicator TYPE abap_bool,
      alias               TYPE sxco_ddef_alias_name,
      condition           TYPE REF TO if_xco_ddl_expr_condition,
    END OF ts_content.

  DATA:
    association TYPE REF TO if_xco_cds_association READ-ONLY,

    read_state  TYPE REF TO cl_xco_ddef_object_read_state READ-ONLY.

  METHODS:
    get_target
      RETURNING
        VALUE(rv_target) TYPE sxco_cds_object_name,

    get_cardinality
      RETURNING
        VALUE(rs_cardinality) TYPE ts_cardinality,

    get_to_parent_indicator
      RETURNING
        VALUE(rv_to_parent_indicator) TYPE abap_bool,

    get_alias
      RETURNING
        VALUE(rv_alias) TYPE sxco_ddef_alias_name,

    get_condition
      RETURNING
        VALUE(ro_condition) TYPE REF TO if_xco_ddl_expr_condition,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.