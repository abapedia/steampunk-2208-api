INTERFACE if_xco_ao_c_method PUBLIC.
  TYPES:
    tv_name TYPE c LENGTH 61.

  INTERFACES:
    if_xco_printable.

  DATA:
    name                 TYPE tv_name READ-ONLY,

    " The object (i.e. interface or class) this method belongs belongs to.
    object               TYPE REF TO if_xco_ao_object READ-ONLY,
    parameters           TYPE REF TO if_xco_ao_s_parameters_factory READ-ONLY,
    importing_parameters TYPE REF TO if_xco_ao_s_p_importings_fctry READ-ONLY,
    exporting_parameters TYPE REF TO if_xco_ao_s_p_exportings_fctry READ-ONLY,
    changing_parameters  TYPE REF TO if_xco_ao_s_p_changings_fctry READ-ONLY,
    returning_parameters TYPE REF TO if_xco_ao_s_p_returnings_fctry READ-ONLY,
    exceptions           TYPE REF TO if_xco_ao_s_exceptions_factory READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_version       TYPE REF TO cl_xco_ao_version OPTIONAL
        io_origin        TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    parameter
      IMPORTING
        iv_name             TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_parameter) TYPE REF TO if_xco_ao_s_parameter,
    importing_parameter
      IMPORTING
        iv_name                       TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_importing_parameter) TYPE REF TO if_xco_ao_s_p_importing,
    exporting_parameter
      IMPORTING
        iv_name                       TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_exporting_parameter) TYPE REF TO if_xco_ao_s_p_exporting,
    changing_parameter
      IMPORTING
        iv_name                      TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_changing_parameter) TYPE REF TO if_xco_ao_s_p_changing,
    returning_parameter
      IMPORTING
        iv_name                       TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_returning_parameter) TYPE REF TO if_xco_ao_s_p_returning,
    exception
      IMPORTING
        iv_name             TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_exception) TYPE REF TO if_xco_ao_s_exception.
ENDINTERFACE.