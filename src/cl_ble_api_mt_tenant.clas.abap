CLASS cl_ble_api_mt_tenant DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_ble_api_mt_tenant.

    CLASS-METHODS:
      create_instance
        RETURNING
          VALUE(ro_instance) TYPE REF TO if_ble_api_mt_tenant.
ENDCLASS.

CLASS cl_ble_api_mt_tenant IMPLEMENTATION.
ENDCLASS.