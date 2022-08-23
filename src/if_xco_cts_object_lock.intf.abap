INTERFACE if_xco_cts_object_lock PUBLIC.
  DATA:
    object TYPE REF TO if_xco_cts_object READ-ONLY.

  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    get_transport
      RETURNING
        VALUE(rv_transport) TYPE sxco_transport.
ENDINTERFACE.