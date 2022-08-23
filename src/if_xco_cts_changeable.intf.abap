INTERFACE if_xco_cts_changeable PUBLIC.
  METHODS:
    get_object
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cts_object.
ENDINTERFACE.