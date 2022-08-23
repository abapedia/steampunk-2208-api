INTERFACE if_xco_srvb_service_versions PUBLIC.
  METHODS:
    get
      RETURNING
        VALUE(rt_versions) TYPE sxco_t_srvb_service_versions.
ENDINTERFACE.