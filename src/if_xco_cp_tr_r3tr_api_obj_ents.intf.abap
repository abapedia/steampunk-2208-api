INTERFACE if_xco_cp_tr_r3tr_api_obj_ents PUBLIC.
  DATA:
    all  TYPE REF TO if_xco_cp_tr_r3tr_oe_class READ-ONLY,

    tabu TYPE REF TO if_xco_cp_tr_r3tr_tabu_api_oes READ-ONLY.

  METHODS:
    where
      IMPORTING
        it_filters      TYPE sxco_t_tr_entry_filters
      RETURNING
        VALUE(ro_where) TYPE REF TO if_xco_cp_tr_r3tr_oe_class.
ENDINTERFACE.