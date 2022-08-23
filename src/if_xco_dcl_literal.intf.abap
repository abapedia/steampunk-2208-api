INTERFACE if_xco_dcl_literal PUBLIC.
  INTERFACES:
    if_xco_dcl_expression.

  ALIASES:
    is_initial FOR if_xco_dcl_expression~is_initial,
    is_not_initial FOR if_xco_dcl_expression~is_not_initial,
    is_null FOR if_xco_dcl_expression~is_null,
    is_not_null FOR if_xco_dcl_expression~is_not_null,
    eq FOR if_xco_dcl_expression~eq,
    ne FOR if_xco_dcl_expression~ne,
    lt FOR if_xco_dcl_expression~lt,
    gt FOR if_xco_dcl_expression~gt,
    le FOR if_xco_dcl_expression~le,
    ge FOR if_xco_dcl_expression~ge,
    like FOR if_xco_dcl_expression~like,
    not_like FOR if_xco_dcl_expression~not_like,
    between FOR if_xco_dcl_expression~between,
    not_between FOR if_xco_dcl_expression~not_between.
ENDINTERFACE.