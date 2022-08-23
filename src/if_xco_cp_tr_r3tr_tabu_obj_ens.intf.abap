INTERFACE if_xco_cp_tr_r3tr_tabu_obj_ens PUBLIC.
  INTERFACES:
    if_xco_cp_tr_r3tr_object_entrs.

  METHODS:
    get
      RETURNING
        VALUE(rt_object_entries) TYPE sxco_t_cp_tr_r3tr_tabu_obj_ens.
ENDINTERFACE.