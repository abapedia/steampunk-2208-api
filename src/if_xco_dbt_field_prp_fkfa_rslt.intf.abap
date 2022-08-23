INTERFACE if_xco_dbt_field_prp_fkfa_rslt PUBLIC.
  METHODS:
    is_incomplete
      RETURNING
        VALUE(rv_is_incomplete) TYPE abap_bool,

    is_non_unique
      RETURNING
        VALUE(rv_is_non_unique) TYPE abap_bool,

    get_field_assignments
      RETURNING
        VALUE(rt_field_assignments) TYPE if_xco_gen_tabl_s_fo_fkey=>tt_field_assignment.
ENDINTERFACE.