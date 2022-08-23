INTERFACE if_xco_fm_prms_importing PUBLIC.
  INTERFACES:
    if_xco_fm_parameters.

  ALIASES:
    function_module FOR if_xco_fm_parameters~function_module,

    get_names FOR if_xco_fm_parameters~get_names.

  METHODS:
    get
      IMPORTING
        io_state                       TYPE REF TO cl_xco_fm_state OPTIONAL
        io_origin                      TYPE REF TO cl_xco_fm_origin OPTIONAL
      RETURNING
        VALUE(rt_importing_parameters) TYPE sxco_t_fm_prms_importing.
ENDINTERFACE.