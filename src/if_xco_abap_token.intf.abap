INTERFACE if_xco_abap_token PUBLIC.
  METHODS:
    get_source
      RETURNING
        VALUE(rv_source) TYPE string.
ENDINTERFACE.