INTERFACE if_xco_tab_psl_fkfa PUBLIC.
  METHODS:
    calculate
      RETURNING
        VALUE(ro_result) TYPE REF TO if_xco_tab_psl_fkfa_result.
ENDINTERFACE.