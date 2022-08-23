INTERFACE if_xco_cp_tab_psl_factory PUBLIC.
  METHODS:
    foreign_key_field_assignments
      IMPORTING
        io_scenario                          TYPE REF TO if_xco_tab_psl_fkfa_scenario
      RETURNING
        VALUE(ro_foreign_key_fld_assignmnts) TYPE REF TO if_xco_tab_psl_fkfa.
ENDINTERFACE.