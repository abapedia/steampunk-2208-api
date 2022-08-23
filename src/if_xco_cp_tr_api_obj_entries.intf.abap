INTERFACE if_xco_cp_tr_api_obj_entries PUBLIC.
  DATA:
    all  TYPE REF TO if_xco_cp_tr_oe_class READ-ONLY,

    r3tr TYPE REF TO if_xco_cp_tr_r3tr_api_obj_ents READ-ONLY.

  METHODS:
    where
      IMPORTING
        it_filters      TYPE sxco_t_tr_entry_filters
      RETURNING
        VALUE(ro_where) TYPE REF TO if_xco_cp_tr_oe_class.
ENDINTERFACE.