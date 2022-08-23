INTERFACE if_xco_ao_s_parameters PUBLIC.
  METHODS:
    get_names
      IMPORTING
        io_version                TYPE REF TO cl_xco_ao_version OPTIONAL
        io_origin                 TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rt_parameter_names) TYPE sxco_t_ao_subcomponent_names,
    get
      IMPORTING
        io_version           TYPE REF TO cl_xco_ao_version OPTIONAL
        io_origin            TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rt_parameters) TYPE sxco_t_ao_s_parameters.
ENDINTERFACE.