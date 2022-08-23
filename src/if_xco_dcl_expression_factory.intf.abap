INTERFACE if_xco_dcl_expression_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_value             TYPE clike
      RETURNING
        VALUE(ro_expression) TYPE REF TO if_xco_dcl_expression.
ENDINTERFACE.