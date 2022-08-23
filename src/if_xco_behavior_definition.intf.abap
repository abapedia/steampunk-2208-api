INTERFACE if_xco_behavior_definition PUBLIC.
  INTERFACES:
    if_xco_ar_object.

  ALIASES:
    exists FOR if_xco_ar_object~exists.

  DATA:
    name TYPE sxco_cds_object_name READ-ONLY.

  METHODS:
    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_behavior_definition_co,

    set_api_state
      IMPORTING
        io_change_scenario TYPE REF TO if_xco_cts_change_scenario
        io_api_state       TYPE REF TO cl_xco_ars_api_state,

    get_api_state
      RETURNING
        VALUE(ro_api_state) TYPE REF TO cl_xco_ars_api_state.
ENDINTERFACE.