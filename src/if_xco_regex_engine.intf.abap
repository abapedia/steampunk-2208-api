INTERFACE if_xco_regex_engine PUBLIC.
  METHODS:
    create_regular_expression
      IMPORTING
        iv_pattern                   TYPE clike
      RETURNING
        VALUE(ro_regular_expression) TYPE REF TO if_xco_regular_expression.
ENDINTERFACE.