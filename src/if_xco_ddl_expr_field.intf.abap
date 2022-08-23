INTERFACE if_xco_ddl_expr_field PUBLIC.
  INTERFACES:
    if_xco_ddl_expression.

  ALIASES:
    is_initial FOR if_xco_ddl_expression~is_initial,
    is_not_initial FOR if_xco_ddl_expression~is_not_initial,
    is_null FOR if_xco_ddl_expression~is_null,
    is_not_null FOR if_xco_ddl_expression~is_not_null,
    eq FOR if_xco_ddl_expression~eq,
    ne FOR if_xco_ddl_expression~ne,
    lt FOR if_xco_ddl_expression~lt,
    gt FOR if_xco_ddl_expression~gt,
    le FOR if_xco_ddl_expression~le,
    ge FOR if_xco_ddl_expression~ge,
    like FOR if_xco_ddl_expression~like,
    between FOR if_xco_ddl_expression~between.

  METHODS:
    of
      IMPORTING
        iv_parent            TYPE string
      RETURNING
        VALUE(ro_expression) TYPE REF TO if_xco_ddl_expression,

    of_projection
      RETURNING
        VALUE(ro_expression) TYPE REF TO if_xco_ddl_expression.
ENDINTERFACE.