INTERFACE if_xco_gen_ddls_field_type PUBLIC.
  METHODS:
    get_blueprint
      RETURNING
        VALUE(ro_blueprint) TYPE REF TO cl_xco_gen_ddls_bp_field_type.
ENDINTERFACE.