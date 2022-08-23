INTERFACE if_ble_api_mt_tenant PUBLIC.
  TYPES:
    ty_tenant_prefix TYPE c LENGTH 10.

  METHODS:
    get_prefix
      RETURNING
        VALUE(rv_prefix) TYPE ty_tenant_prefix.
ENDINTERFACE.