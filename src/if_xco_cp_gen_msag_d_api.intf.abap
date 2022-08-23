INTERFACE if_xco_cp_gen_msag_d_api PUBLIC.
  METHODS:
    create_put_operation
      RETURNING
        VALUE(ro_put_operation) TYPE REF TO if_xco_cp_gen_msag_d_o_put,

    create_patch_operation
      RETURNING
        VALUE(ro_patch_operation) TYPE REF TO if_xco_cp_gen_msag_d_o_patch,

    create_delete_operation
      RETURNING
        VALUE(ro_delete_operation) TYPE REF TO if_xco_cp_gen_msag_d_o_delete.
ENDINTERFACE.