INTERFACE if_xco_application_log_objects PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_application_log_objects) TYPE sxco_t_application_log_objects.
ENDINTERFACE.