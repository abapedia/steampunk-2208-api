INTERFACE if_xco_cds_entity PUBLIC.
  INTERFACES:
    if_xco_ar_object,
    if_xco_cds_ann_target,
    if_xco_gen_clas_amdp_db_entity,
    if_xco_printable.

  DATA:
    name   TYPE sxco_cds_object_name READ-ONLY,

    fields TYPE REF TO if_xco_cds_fields_factory READ-ONLY.

  METHODS:
    get_data_definition
      RETURNING
        VALUE(ro_data_definition) TYPE REF TO if_xco_data_definition,

    set_api_state
      IMPORTING
        io_release_contract TYPE REF TO cl_xco_ars_release_contract
        io_change_scenario  TYPE REF TO if_xco_cts_change_scenario
        io_api_state        TYPE REF TO cl_xco_ars_api_state,

    get_api_state
      IMPORTING
        io_release_contract TYPE REF TO cl_xco_ars_release_contract
      RETURNING
        VALUE(ro_api_state) TYPE REF TO cl_xco_ars_api_state,

    field
      IMPORTING
        iv_name         TYPE sxco_cds_field_name
      RETURNING
        VALUE(ro_field) TYPE REF TO if_xco_cds_field.
ENDINTERFACE.