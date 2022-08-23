INTERFACE if_xco_cp_gen_d_o_put_option PUBLIC.
  METHODS:
    get
      RETURNING
        VALUE(ro_put_operation_option) TYPE REF TO cl_xco_cp_gen_d_o_put_option.
ENDINTERFACE.