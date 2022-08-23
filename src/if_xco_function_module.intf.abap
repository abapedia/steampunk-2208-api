INTERFACE if_xco_function_module PUBLIC.
  INTERFACES:
    if_xco_printable.

  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_function_module WITH DEFAULT KEY.

  DATA:
    name                 TYPE sxco_fm_name READ-ONLY,
    importing_parameters TYPE REF TO if_xco_fm_prms_importing_fctry READ-ONLY,
    exporting_parameters TYPE REF TO if_xco_fm_prms_exporting_fctry READ-ONLY,
    changing_parameters  TYPE REF TO if_xco_fm_prms_changing_fctry READ-ONLY,
    exceptions           TYPE REF TO if_xco_fm_exceptions_factory READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_state         TYPE REF TO cl_xco_fm_state OPTIONAL
        io_origin        TYPE REF TO cl_xco_fm_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    get_function_group
      RETURNING
        VALUE(ro_function_group) TYPE REF TO if_xco_function_group,
    set_api_state
      IMPORTING
        io_change_scenario TYPE REF TO if_xco_cts_change_scenario
        io_api_state       TYPE REF TO cl_xco_ars_api_state,
    get_api_state
      RETURNING
        VALUE(ro_api_state) TYPE REF TO cl_xco_ars_api_state,
    content
      IMPORTING
        io_state          TYPE REF TO cl_xco_fm_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_fm_content,
    importing_parameter
      IMPORTING
        iv_name                       TYPE sxco_fm_parameter_name
      RETURNING
        VALUE(ro_importing_parameter) TYPE REF TO if_xco_fm_prm_importing,
    exporting_parameter
      IMPORTING
        iv_name                       TYPE sxco_fm_parameter_name
      RETURNING
        VALUE(ro_exporting_parameter) TYPE REF TO if_xco_fm_prm_exporting,
    changing_parameter
      IMPORTING
        iv_name                      TYPE sxco_fm_parameter_name
      RETURNING
        VALUE(ro_changing_parameter) TYPE REF TO if_xco_fm_prm_changing,
    exception
      IMPORTING
        iv_name             TYPE sxco_fm_exception_name
      RETURNING
        VALUE(ro_exception) TYPE REF TO if_xco_fm_exception.
ENDINTERFACE.