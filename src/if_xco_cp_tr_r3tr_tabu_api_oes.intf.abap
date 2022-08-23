INTERFACE if_xco_cp_tr_r3tr_tabu_api_oes PUBLIC.
  DATA:
    all TYPE REF TO if_xco_cp_tr_r3tr_tabu_oe_clss READ-ONLY.

  METHODS:
    where
      IMPORTING
        it_filters      TYPE sxco_t_tr_entry_filters
      RETURNING
        VALUE(ro_where) TYPE REF TO if_xco_cp_tr_r3tr_tabu_oe_clss.
ENDINTERFACE.