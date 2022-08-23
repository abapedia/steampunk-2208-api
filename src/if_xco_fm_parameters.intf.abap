INTERFACE if_xco_fm_parameters PUBLIC.
  DATA:
    function_module TYPE REF TO if_xco_function_module READ-ONLY.

  METHODS:
    get_names
      IMPORTING
        io_state        TYPE REF TO cl_xco_fm_state OPTIONAL
        io_origin       TYPE REF TO cl_xco_fm_origin OPTIONAL
      RETURNING
        VALUE(rt_names) TYPE sxco_t_fm_parameter_names.
ENDINTERFACE.