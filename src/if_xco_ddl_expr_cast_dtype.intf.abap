INTERFACE if_xco_ddl_expr_cast_dtype PUBLIC.
  METHODS:
    get_blueprint
      RETURNING
        VALUE(ro_blueprint) TYPE REF TO cl_xco_ddl_expr_cast_bp_dtype.
ENDINTERFACE.