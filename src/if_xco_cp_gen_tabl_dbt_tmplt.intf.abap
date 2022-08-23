INTERFACE if_xco_cp_gen_tabl_dbt_tmplt PUBLIC.
  METHODS:
    get
      RETURNING
        VALUE(ro_template) TYPE REF TO cl_xco_cp_gen_tabl_dbt_tmplt.
ENDINTERFACE.