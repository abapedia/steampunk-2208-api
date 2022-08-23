INTERFACE if_xco_cp_gen_o_delete PUBLIC.
  METHODS:
    execute
      RETURNING
        VALUE(ro_result) TYPE REF TO if_xco_gen_o_delete_result.
ENDINTERFACE.