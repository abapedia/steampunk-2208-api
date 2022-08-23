INTERFACE if_xco_ao_s_p_exportings PUBLIC.
  INTERFACES:
    if_xco_ao_s_parameters.

  DATA:
    method TYPE REF TO if_xco_ao_c_method READ-ONLY.

  METHODS:
    get
      IMPORTING
        io_version                     TYPE REF TO cl_xco_ao_version OPTIONAL
        io_origin                      TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rt_exporting_parameters) TYPE sxco_t_ao_s_p_exportings.
ENDINTERFACE.