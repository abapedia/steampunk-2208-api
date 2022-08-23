INTERFACE if_xco_ddl_eb_cast PUBLIC.
  METHODS:
    set_operand
      IMPORTING
        io_operand   TYPE REF TO if_xco_ddl_expression
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_ddl_eb_cast,

    set_data_type
      IMPORTING
        io_data_type TYPE REF TO if_xco_ddl_expr_cast_dtype
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_ddl_eb_cast,

    set_preserving_type
      IMPORTING
        iv_preserving_type TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_ddl_eb_cast,

    get_expression
      RETURNING
        VALUE(ro_expression) TYPE REF TO if_xco_ddl_expression.
ENDINTERFACE.