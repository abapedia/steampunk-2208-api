INTERFACE if_xco_cp_gen_doma_template PUBLIC.
  METHODS:
    get
      RETURNING
        VALUE(ro_template) TYPE REF TO cl_xco_cp_gen_doma_template.
ENDINTERFACE.