INTERFACE if_xco_gen_ddls_ddl_expression PUBLIC.
  METHODS:
    get_blueprint
      RETURNING
        VALUE(ro_blueprint) TYPE REF TO cl_xco_gen_ddls_bp_ddl_express.
ENDINTERFACE.