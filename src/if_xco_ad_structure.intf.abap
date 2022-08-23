INTERFACE if_xco_ad_structure PUBLIC.
  INTERFACES:
    if_xco_ad_data_type,

    if_xco_cts_changeable.

  ALIASES:
    name FOR if_xco_ad_object~name,

    exists FOR if_xco_ad_object~exists,
    get_state FOR if_xco_ad_object~get_state,
    check_syntax FOR if_xco_ad_object~check_syntax.

  DATA:
    components TYPE REF TO if_xco_str_components_factory READ-ONLY.

  METHODS:
    set_api_state
      IMPORTING
        io_change_scenario TYPE REF TO if_xco_cts_change_scenario
        io_api_state       TYPE REF TO cl_xco_ars_api_state,
    get_api_state
      RETURNING
        VALUE(ro_api_state) TYPE REF TO cl_xco_ars_api_state,
    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_str_content,
    component
      IMPORTING
        iv_name             TYPE sxco_ad_field_name
      RETURNING
        VALUE(ro_component) TYPE REF TO if_xco_str_component.
ENDINTERFACE.