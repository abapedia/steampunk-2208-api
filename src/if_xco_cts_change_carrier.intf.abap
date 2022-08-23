INTERFACE if_xco_cts_change_carrier PUBLIC.
  METHODS:
    get_change
      RETURNING
        VALUE(ro_change) TYPE REF TO cl_xco_cts_change.
ENDINTERFACE.