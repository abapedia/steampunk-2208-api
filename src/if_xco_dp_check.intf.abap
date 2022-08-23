INTERFACE if_xco_dp_check PUBLIC.
  INTERFACES:
    if_xco_dp_action,
    if_xco_dp_action_decorator.

  ALIASES:
    messages FOR if_xco_dp_action~messages,

    execute FOR if_xco_dp_action~execute.

  DATA:
    passed TYPE REF TO cl_xco_boolean READ-ONLY.

  METHODS:
    enforce,
    get_result
      RETURNING
        VALUE(ro_result) TYPE REF TO if_xco_dp_check_result.
ENDINTERFACE.