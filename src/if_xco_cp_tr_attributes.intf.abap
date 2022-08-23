INTERFACE if_xco_cp_tr_attributes PUBLIC.
  METHODS:
    get
      RETURNING
        VALUE(rt_attributes) TYPE if_xco_cp_tr_attribute=>list.
ENDINTERFACE.