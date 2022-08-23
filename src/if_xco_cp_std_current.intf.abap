INTERFACE if_xco_cp_std_current PUBLIC.
  DATA:
    call_stack TYPE REF TO if_xco_cp_std_cur_api_cll_stck READ-ONLY.

  METHODS:
    tenant
      RETURNING
        VALUE(ro_tenant) TYPE REF TO if_xco_cp_tenant.
ENDINTERFACE.