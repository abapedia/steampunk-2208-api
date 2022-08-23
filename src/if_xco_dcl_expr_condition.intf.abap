INTERFACE if_xco_dcl_expr_condition PUBLIC.
  INTERFACES:
    if_xco_dcl_expression.

  METHODS:
    not
      RETURNING
        VALUE(ro_not_expression) TYPE REF TO if_xco_dcl_expr_condition,

    and
      IMPORTING
        io_operand               TYPE REF TO if_xco_dcl_expr_condition
      RETURNING
        VALUE(ro_and_expression) TYPE REF TO if_xco_dcl_expr_condition,

    or
      IMPORTING
        io_operand              TYPE REF TO if_xco_dcl_expr_condition
      RETURNING
        VALUE(ro_or_expression) TYPE REF TO if_xco_dcl_expr_condition,

    add_parantheses " test
      RETURNING
        VALUE(ro_expression) TYPE REF TO if_xco_dcl_expr_condition.
ENDINTERFACE.