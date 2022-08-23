INTERFACE if_xco_cp_gen_tabl_gtt_d_api PUBLIC.
  METHODS:
    create_delete_operation
      RETURNING
        VALUE(ro_delete_operation) TYPE REF TO if_xco_cp_gen_tabl_gtt_d_o_del.
ENDINTERFACE.