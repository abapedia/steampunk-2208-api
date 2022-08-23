INTERFACE if_xco_dcl_cb_pfcg_operator PUBLIC.
  METHODS:
    set_equal
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_pfcg_operator,

    set_soft_equal
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_pfcg_operator.
ENDINTERFACE.