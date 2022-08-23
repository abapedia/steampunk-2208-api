INTERFACE if_xco_dcl_cond_pfcg_f PUBLIC.
  METHODS:
    builder
      RETURNING
        VALUE(ro_pfcg_cond_builder) TYPE REF TO if_xco_dcl_cb_pfcg.
ENDINTERFACE.