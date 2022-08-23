INTERFACE if_xco_cp_tr_request PUBLIC.
  INTERFACES:
    if_xco_cp_transport.

  ALIASES:
    value FOR if_xco_cp_transport~value,

    exists FOR if_xco_cp_transport~exists,
    get_status FOR if_xco_cp_transport~get_status,
    release FOR if_xco_cp_transport~release.

  DATA:
    attributes TYPE REF TO if_xco_cp_tr_request_attrbts_f READ-ONLY.

  METHODS:
    properties
      RETURNING
        VALUE(ro_properties) TYPE REF TO if_xco_cp_tr_request_proprties,
    protect,
    unprotect,
    create_task
      RETURNING
        VALUE(ro_task) TYPE REF TO if_xco_cp_tr_task,
    get_tasks
      RETURNING
        VALUE(rt_tasks) TYPE sxco_t_cp_tr_tasks.
ENDINTERFACE.