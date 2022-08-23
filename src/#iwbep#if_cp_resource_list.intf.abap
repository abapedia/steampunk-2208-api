INTERFACE /iwbep/if_cp_resource_list
  PUBLIC.
  METHODS bind_action
    IMPORTING
      iv_action_name            TYPE /iwbep/if_cp_runtime_types=>ty_internal_name
    RETURNING
      VALUE(ro_action_resource) TYPE REF TO /iwbep/if_cp_resource_action
    RAISING
      /iwbep/cx_gateway.
  METHODS bind_function
    IMPORTING
      iv_function_name            TYPE /iwbep/if_cp_runtime_types=>ty_internal_name
    RETURNING
      VALUE(ro_function_resource) TYPE REF TO /iwbep/if_cp_resource_function
    RAISING
      /iwbep/cx_gateway.
  METHODS create_request_for_create
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_create
    RAISING
      /iwbep/cx_gateway.
  METHODS create_request_for_read
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS create_request_for_update
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_update_l
    RAISING
      /iwbep/cx_gateway.
  METHODS navigate_with_key
    IMPORTING
      !is_key_data             TYPE data
    RETURNING
      VALUE(ro_child_resource) TYPE REF TO /iwbep/if_cp_resource_entity
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.