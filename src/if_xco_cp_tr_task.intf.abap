INTERFACE if_xco_cp_tr_task PUBLIC.
  INTERFACES:
    if_xco_cp_transport.

  ALIASES:
    value       FOR if_xco_cp_transport~value,

    exists      FOR if_xco_cp_transport~exists,
    get_status  FOR if_xco_cp_transport~get_status,
    get_request FOR if_xco_cp_transport~get_request,
    release     FOR if_xco_cp_transport~release.

  METHODS:
    properties
      RETURNING
        VALUE(ro_properties) TYPE REF TO if_xco_cp_tr_task_properties.
ENDINTERFACE.