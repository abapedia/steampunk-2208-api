INTERFACE if_xco_ddl_expr_cast_f PUBLIC.
  METHODS:
    builder
      RETURNING
        VALUE(ro_cast_builder) TYPE REF TO if_xco_ddl_eb_cast.
ENDINTERFACE.