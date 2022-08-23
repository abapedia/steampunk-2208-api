INTERFACE if_xco_ddl_eb_case PUBLIC.
  METHODS:
    set_operand
      IMPORTING
        io_operand   TYPE REF TO if_xco_ddl_expression
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_ddl_eb_case,

    add_when
      IMPORTING
        io_operand   TYPE REF TO if_xco_ddl_expression
        io_result    TYPE REF TO if_xco_ddl_expression
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_ddl_eb_case,

    set_else
      IMPORTING
        io_else    TYPE REF TO if_xco_ddl_expression
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_ddl_eb_case,

    get_expression
      RETURNING
        VALUE(ro_expression) TYPE REF TO if_xco_ddl_expression.
ENDINTERFACE.