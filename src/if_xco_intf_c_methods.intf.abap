INTERFACE if_xco_intf_c_methods PUBLIC.
  DATA:
    interface TYPE REF TO if_xco_ao_interface READ-ONLY.

  METHODS:
    get
      IMPORTING
        io_version        TYPE REF TO cl_xco_ao_version OPTIONAL
        io_origin         TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rt_methods) TYPE sxco_t_intf_c_methods.
ENDINTERFACE.