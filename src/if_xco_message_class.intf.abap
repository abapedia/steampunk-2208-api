INTERFACE if_xco_message_class PUBLIC.
  INTERFACES:
    if_xco_ar_object,

    if_xco_printable.

  ALIASES:
    exists FOR if_xco_ar_object~exists.

  DATA:
    name     TYPE sxco_mc_object_name READ-ONLY,

    messages TYPE REF TO if_xco_mc_messages_factory READ-ONLY.

  METHODS:
    set_api_state
      IMPORTING
        io_change_scenario TYPE REF TO if_xco_cts_change_scenario
        io_api_state       TYPE REF TO cl_xco_ars_api_state,

    get_api_state
      RETURNING
        VALUE(ro_api_state) TYPE REF TO cl_xco_ars_api_state,

    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_mc_content,

    message
      IMPORTING
        iv_number         TYPE if_xco_mc_message=>tv_number
      RETURNING
        VALUE(ro_message) TYPE REF TO if_xco_mc_message.
ENDINTERFACE.