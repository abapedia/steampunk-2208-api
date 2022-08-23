INTERFACE if_xco_cds_parameters PUBLIC.
  METHODS:
    get
      IMPORTING
        io_read_state        TYPE REF TO cl_xco_ddef_object_read_state OPTIONAL
      RETURNING
        VALUE(rt_parameters) TYPE sxco_t_cds_parameters,

    get_names
      IMPORTING
        io_read_state   TYPE REF TO cl_xco_ddef_object_read_state OPTIONAL
      RETURNING
        VALUE(rt_names) TYPE sxco_t_cds_parameter_names.
ENDINTERFACE.