INTERFACE /iwbep/if_cp_resource_function
  PUBLIC.
  METHODS create_request
    RETURNING
      VALUE(ro_function_request) TYPE REF TO /iwbep/if_cp_request_function
    RAISING
      /iwbep/cx_gateway.
  METHODS set_parameter
    IMPORTING
      is_parameter       TYPE any
    RETURNING
      VALUE(ro_resource) TYPE REF TO /iwbep/if_cp_resource_function
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.