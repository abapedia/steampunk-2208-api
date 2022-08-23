INTERFACE if_xco_cts_change_target PUBLIC.
  METHODS:
    get_transported_check
      IMPORTING
        iv_transport                TYPE sxco_transport
      RETURNING
        VALUE(ro_transported_check) TYPE REF TO if_xco_dp_check,

    get_local_check
      RETURNING
        VALUE(ro_local_check) TYPE REF TO if_xco_dp_check.
ENDINTERFACE.