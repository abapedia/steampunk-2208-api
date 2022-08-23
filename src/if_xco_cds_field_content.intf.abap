INTERFACE if_xco_cds_field_content PUBLIC.
  TYPES:
    BEGIN OF ts_association_content,
      target              TYPE sxco_cds_object_name,
      cardinality         TYPE if_xco_cds_association_content=>ts_cardinality,
      to_parent_indicator TYPE abap_bool,
      condition           TYPE REF TO if_xco_ddl_expr_condition,
    END OF ts_association_content,

    BEGIN OF ts_composition_content,
      target      TYPE sxco_cds_object_name,
      cardinality TYPE if_xco_cds_composition_content=>ts_cardinality,
    END OF ts_composition_content,

    BEGIN OF ts_content,
      original_name              TYPE sxco_cds_field_name,
      expression                 TYPE REF TO if_xco_ddl_expression,
      alias                      TYPE sxco_ddef_alias_name,
      key_indicator              TYPE abap_bool,
      localized_indicator        TYPE abap_bool,
      virtual_indicator          TYPE abap_bool,
      redirected_to              TYPE sxco_cds_object_name,
      redirected_to_parent       TYPE sxco_cds_object_name,
      redirected_to_compos_child TYPE sxco_cds_object_name,
      type                       TYPE REF TO if_xco_cds_field_type,
      association                TYPE ts_association_content,
      composition                TYPE ts_composition_content,
    END OF ts_content.

  DATA:
    field      TYPE REF TO if_xco_cds_field READ-ONLY,

    read_state TYPE REF TO cl_xco_ddef_object_read_state READ-ONLY.

  METHODS:
    get_original_name
      RETURNING
        VALUE(rv_original_name) TYPE sxco_cds_field_name,

    get_expression
      RETURNING
        VALUE(ro_expression) TYPE REF TO if_xco_ddl_expression,

    get_alias
      RETURNING
        VALUE(rv_alias) TYPE sxco_ddef_alias_name,

    get_key_indicator
      RETURNING
        VALUE(rv_key_indicator) TYPE abap_bool,

    get_localized_indicator
      RETURNING
        VALUE(rv_localized_indicator) TYPE abap_bool,

    get_virtual_indicator
      RETURNING
        VALUE(rv_virtual_indicator) TYPE abap_bool,

    get_redirected_to
      RETURNING
        VALUE(rv_redirected_to) TYPE sxco_cds_object_name,

    get_redirected_to_parent
      RETURNING
        VALUE(rv_redirected_to_parent) TYPE sxco_cds_object_name,

    get_redirected_to_compos_child
      RETURNING
        VALUE(rv_redirected_to_compos_child) TYPE sxco_cds_object_name,

    get_type
      RETURNING
        VALUE(ro_type) TYPE REF TO if_xco_cds_field_type,

    get_association
      RETURNING
        VALUE(rs_association) TYPE ts_association_content,

    get_composition
      RETURNING
        VALUE(rs_composition) TYPE ts_composition_content,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.