INTERFACE if_xco_ddl_literal_factory PUBLIC.
  METHODS:
    numeric
      IMPORTING
        iv_value          TYPE numeric
      RETURNING
        VALUE(ro_literal) TYPE REF TO if_xco_ddl_expression,

    character
      IMPORTING
        iv_value          TYPE clike
      RETURNING
        VALUE(ro_literal) TYPE REF TO if_xco_ddl_expression.
ENDINTERFACE.