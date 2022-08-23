INTERFACE if_xco_srvb_services PUBLIC.
  METHODS:
    get
      RETURNING
        VALUE(rt_services) TYPE sxco_t_srvb_services.
ENDINTERFACE.