INTERFACE if_xco_ao_s_exceptions PUBLIC.
  DATA:
    method TYPE REF TO if_xco_ao_c_method READ-ONLY.

  METHODS:
    get
      IMPORTING
        io_version           TYPE REF TO cl_xco_ao_version OPTIONAL
        io_origin            TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rt_exceptions) TYPE sxco_t_ao_s_exceptions.
ENDINTERFACE.