INTERFACE if_xco_global_temporary_table PUBLIC.
  INTERFACES:
    if_xco_ad_object.

  ALIASES:
    exists FOR if_xco_ad_object~exists,
    get_state FOR if_xco_ad_object~get_state,
    check_syntax FOR if_xco_ad_object~check_syntax.

  DATA:
    name   TYPE sxco_gtt_object_name READ-ONLY,

    fields TYPE REF TO if_xco_gtt_fields_factory READ-ONLY.

  METHODS:
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

    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_gtt_content,
    field
      IMPORTING
        iv_name         TYPE sxco_ad_field_name
      RETURNING
        VALUE(ro_field) TYPE REF TO if_xco_gtt_field.
ENDINTERFACE.