INTERFACE if_xco_cp_gen_tabl_str_tmplt PUBLIC.
  METHODS:
    get
      RETURNING
        VALUE(ro_template) TYPE REF TO cl_xco_cp_gen_tabl_str_tmplt.
ENDINTERFACE.