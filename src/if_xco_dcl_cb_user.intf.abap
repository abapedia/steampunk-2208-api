INTERFACE if_xco_dcl_cb_user PUBLIC.
  INTERFACES:
    if_xco_dcl_condition_builder.

  ALIASES:
    get_condition FOR if_xco_dcl_condition_builder~get_condition.

  DATA:
    operator TYPE REF TO if_xco_dcl_cb_user_operator READ-ONLY.

  METHODS:
    set_field
      IMPORTING
        io_field     TYPE REF TO if_xco_dcl_expression
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_user.
ENDINTERFACE.