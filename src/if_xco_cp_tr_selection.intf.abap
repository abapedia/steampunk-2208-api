INTERFACE if_xco_cp_tr_selection PUBLIC.
  METHODS:
    resolve
      IMPORTING
        io_resolution        TYPE REF TO cl_xco_tr_resolution
      RETURNING
        VALUE(rt_transports) TYPE sxco_t_cp_transports.
ENDINTERFACE.