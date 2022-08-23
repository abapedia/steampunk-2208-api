INTERFACE /iwbep/if_cp_resource_action
  PUBLIC.
  METHODS create_request
    RETURNING
      VALUE(ro_action_request) TYPE REF TO /iwbep/if_cp_request_action
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.