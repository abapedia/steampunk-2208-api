INTERFACE if_xco_cp_url PUBLIC.
  METHODS:
    get_protocol
      RETURNING
        VALUE(rv_protocol) TYPE string,
    get_host
      RETURNING
        VALUE(rv_host) TYPE string,
    get_port
      RETURNING
        VALUE(rv_port) TYPE i.
ENDINTERFACE.