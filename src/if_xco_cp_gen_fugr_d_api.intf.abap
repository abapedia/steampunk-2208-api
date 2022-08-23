INTERFACE if_xco_cp_gen_fugr_d_api PUBLIC.
  METHODS:
    create_post_operation
      RETURNING
        VALUE(ro_post_operation) TYPE REF TO if_xco_cp_gen_fugr_d_o_post,

    create_patch_operation
      RETURNING
        VALUE(ro_patch_operation) TYPE REF TO if_xco_cp_gen_fugr_d_o_patch,

    create_delete_operation
      RETURNING
        VALUE(ro_delete_operation) TYPE REF TO if_xco_cp_gen_fugr_d_o_delete.
ENDINTERFACE.