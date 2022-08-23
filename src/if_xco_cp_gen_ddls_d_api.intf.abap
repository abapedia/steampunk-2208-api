INTERFACE if_xco_cp_gen_ddls_d_api PUBLIC.
  METHODS:
    create_delete_operation
      RETURNING
        VALUE(ro_delete_operation) TYPE REF TO if_xco_cp_gen_ddls_d_o_delete.
ENDINTERFACE.