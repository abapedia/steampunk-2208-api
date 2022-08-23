INTERFACE if_xco_ddl_expression PUBLIC.
  INTERFACES:
    if_xco_gen_ddls_ddl_expression,

    if_xco_text.

  METHODS:
    is_initial
      RETURNING
        VALUE(ro_is_initial_expression) TYPE REF TO if_xco_ddl_expr_condition,

    is_not_initial
      RETURNING
        VALUE(ro_is_not_initial_expression) TYPE REF TO if_xco_ddl_expr_condition,

    is_null
      RETURNING
        VALUE(ro_is_null_expression) TYPE REF TO if_xco_ddl_expr_condition,

    is_not_null
      RETURNING
        VALUE(ro_is_not_null_expression) TYPE REF TO if_xco_ddl_expr_condition,

    eq
      IMPORTING
        io_operand              TYPE REF TO if_xco_ddl_expression
      RETURNING
        VALUE(ro_eq_expression) TYPE REF TO if_xco_ddl_expr_condition,

    ne
      IMPORTING
        io_operand              TYPE REF TO if_xco_ddl_expression
      RETURNING
        VALUE(ro_ne_expression) TYPE REF TO if_xco_ddl_expr_condition,

    lt
      IMPORTING
        io_operand              TYPE REF TO if_xco_ddl_expression
      RETURNING
        VALUE(ro_lt_expression) TYPE REF TO if_xco_ddl_expr_condition,

    gt
      IMPORTING
        io_operand              TYPE REF TO if_xco_ddl_expression
      RETURNING
        VALUE(ro_gt_expression) TYPE REF TO if_xco_ddl_expr_condition,

    le
      IMPORTING
        io_operand              TYPE REF TO if_xco_ddl_expression
      RETURNING
        VALUE(ro_le_expression) TYPE REF TO if_xco_ddl_expr_condition,

    ge
      IMPORTING
        io_operand              TYPE REF TO if_xco_ddl_expression
      RETURNING
        VALUE(ro_ge_expression) TYPE REF TO if_xco_ddl_expr_condition,

    like
      IMPORTING
        io_operand                TYPE REF TO if_xco_ddl_expression
      RETURNING
        VALUE(ro_like_expression) TYPE REF TO if_xco_ddl_expr_condition,

    between
      IMPORTING
        io_operand_1                 TYPE REF TO if_xco_ddl_expression
        io_operand_2                 TYPE REF TO if_xco_ddl_expression
      RETURNING
        VALUE(ro_between_expression) TYPE REF TO if_xco_ddl_expr_condition.
ENDINTERFACE.