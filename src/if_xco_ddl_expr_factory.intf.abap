INTERFACE if_xco_ddl_expr_factory PUBLIC.
  DATA:
    case TYPE REF TO if_xco_ddl_expr_case_f READ-ONLY,
    cast TYPE REF TO if_xco_ddl_expr_cast_f READ-ONLY.

  METHODS:
    for
      IMPORTING
        iv_value             TYPE string
      RETURNING
        VALUE(ro_expression) TYPE REF TO if_xco_ddl_expression,

    for_condition
      IMPORTING
        iv_value             TYPE string
      RETURNING
        VALUE(ro_expression) TYPE REF TO if_xco_ddl_expr_condition.
ENDINTERFACE.