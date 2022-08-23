INTERFACE if_xco_ddl_expr_case_f PUBLIC.
  METHODS:
    builder
      RETURNING
        VALUE(ro_case_builder) TYPE REF TO if_xco_ddl_eb_case.
ENDINTERFACE.