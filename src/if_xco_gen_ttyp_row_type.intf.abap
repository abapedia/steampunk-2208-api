INTERFACE if_xco_gen_ttyp_row_type PUBLIC.
  METHODS:
    get_blueprint
      RETURNING
        VALUE(ro_blueprint) TYPE REF TO cl_xco_gen_ttyp_bp_row_type.
ENDINTERFACE.