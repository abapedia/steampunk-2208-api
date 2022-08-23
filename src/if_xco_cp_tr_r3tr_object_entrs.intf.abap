INTERFACE if_xco_cp_tr_r3tr_object_entrs PUBLIC.
  INTERFACES:
    if_xco_cp_tr_object_entries.

  METHODS:
    get
      RETURNING
        VALUE(rt_object_entries) TYPE sxco_t_cp_tr_r3tr_object_entrs.
ENDINTERFACE.