INTERFACE if_xco_gen_ddls_param_dtype PUBLIC.
  METHODS:
    get_blueprint
      RETURNING
        VALUE(ro_blueprint) TYPE REF TO cl_xco_gen_ddls_bp_param_dtype.
ENDINTERFACE.