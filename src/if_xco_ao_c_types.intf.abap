INTERFACE if_xco_ao_c_types PUBLIC.
  DATA:
    object TYPE REF TO if_xco_ao_object READ-ONLY.

  METHODS:
    get
      IMPORTING
        io_version      TYPE REF TO cl_xco_ao_version OPTIONAL
        io_origin       TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rt_types) TYPE sxco_t_ao_c_types.
ENDINTERFACE.