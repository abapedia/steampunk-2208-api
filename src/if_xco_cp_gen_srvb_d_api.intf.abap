INTERFACE if_xco_cp_gen_srvb_d_api PUBLIC.
  METHODS:
    create_put_operation
      RETURNING
        VALUE(ro_put_operation) TYPE REF TO if_xco_cp_gen_srvb_d_o_put,

    create_delete_operation
      RETURNING
        VALUE(ro_delete_operation) TYPE REF TO if_xco_cp_gen_srvb_d_o_delete.
ENDINTERFACE.