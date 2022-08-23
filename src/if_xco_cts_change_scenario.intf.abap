INTERFACE if_xco_cts_change_scenario PUBLIC.
  METHODS:
    get_context
      RETURNING
        VALUE(ro_context) TYPE REF TO cl_xco_cts_change_context.
ENDINTERFACE.