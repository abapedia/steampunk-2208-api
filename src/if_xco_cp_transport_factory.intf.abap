INTERFACE if_xco_cp_transport_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_transport        TYPE sxco_transport
      RETURNING
        VALUE(ro_transport) TYPE REF TO if_xco_cp_transport.
ENDINTERFACE.