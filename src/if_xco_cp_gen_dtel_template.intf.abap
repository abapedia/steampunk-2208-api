INTERFACE if_xco_cp_gen_dtel_template PUBLIC.
  METHODS:
    get
      RETURNING
        VALUE(ro_template) TYPE REF TO cl_xco_cp_gen_dtel_template.
ENDINTERFACE.