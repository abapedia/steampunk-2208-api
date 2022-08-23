INTERFACE if_xco_tab_psl_fkfa_scenario PUBLIC.
  METHODS:
    get
      RETURNING
        VALUE(ro_scenario) TYPE REF TO cl_xco_tab_psl_fkfa_scenario.
ENDINTERFACE.