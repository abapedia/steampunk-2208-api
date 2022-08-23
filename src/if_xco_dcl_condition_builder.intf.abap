INTERFACE if_xco_dcl_condition_builder PUBLIC.
  METHODS:
    get_condition
      RETURNING
        VALUE(ro_condition) TYPE REF TO if_xco_dcl_expr_condition.
ENDINTERFACE.