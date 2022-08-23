INTERFACE if_xco_data_definition PUBLIC.
  INTERFACES:
    if_xco_ar_object,

    if_xco_cds_ann_target.

  ALIASES:
    exists FOR if_xco_ar_object~exists.

  DATA:
    name TYPE sxco_cds_object_name READ-ONLY.

  METHODS:
    check_syntax
      RETURNING
        VALUE(ro_check_result) TYPE REF TO if_xco_dp_check_result,

    get_type
      RETURNING
        VALUE(ro_type) TYPE REF TO cl_xco_ddef_type,

    get_state
      IMPORTING
        io_read_state   TYPE REF TO cl_xco_ddef_object_read_state
      RETURNING
        VALUE(ro_state) TYPE REF TO cl_xco_ddef_object_state,

    entity
      IMPORTING
        iv_name          TYPE sxco_cds_object_name OPTIONAL
      RETURNING
        VALUE(ro_entity) TYPE REF TO if_xco_cds_entity,

    view
      IMPORTING
        iv_name        TYPE sxco_cds_object_name OPTIONAL
      RETURNING
        VALUE(ro_view) TYPE REF TO if_xco_cds_view,

    view_entity
      IMPORTING
        iv_name              TYPE sxco_cds_object_name OPTIONAL
      RETURNING
        VALUE(ro_view_entiy) TYPE REF TO if_xco_cds_view_entity,

    projection_view
      IMPORTING
        iv_name                   TYPE sxco_cds_object_name OPTIONAL
      RETURNING
        VALUE(ro_projection_view) TYPE REF TO if_xco_cds_projection_view,

    abstract_entity
      RETURNING
        VALUE(ro_abstract_entity) TYPE REF TO if_xco_cds_abstract_entity,

    custom_entity
      RETURNING
        VALUE(ro_custom_entity) TYPE REF TO if_xco_cds_custom_entity,

    table_function
      RETURNING
        VALUE(ro_table_function) TYPE REF TO if_xco_cds_table_function.
ENDINTERFACE.