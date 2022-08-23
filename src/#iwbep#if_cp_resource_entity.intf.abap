INTERFACE /iwbep/if_cp_resource_entity
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
  METHODS create_request_for_delete
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_delete
    RAISING
      /iwbep/cx_gateway.
  METHODS create_request_for_read
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_read
    RAISING
      /iwbep/cx_gateway.
  METHODS create_request_for_update
    IMPORTING
      !iv_semantic      TYPE /iwbep/if_cp_request_update=>ty_update_semantic
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_update
    RAISING
      /iwbep/cx_gateway.
  METHODS navigate_to_many
    IMPORTING
      !iv_navigation_property_name TYPE /iwbep/if_cp_runtime_types=>ty_internal_name
    RETURNING
      VALUE(ro_child_resource)     TYPE REF TO /iwbep/if_cp_resource_list
    RAISING
      /iwbep/cx_gateway.
  METHODS navigate_to_optional
    IMPORTING
      !iv_navigation_property_name TYPE /iwbep/if_cp_runtime_types=>ty_internal_name
    RETURNING
      VALUE(ro_child_resource)     TYPE REF TO /iwbep/if_cp_resource_entity01
    RAISING
      /iwbep/cx_gateway.
  METHODS navigate_to_single
    IMPORTING
      !iv_navigation_property_name TYPE /iwbep/if_cp_runtime_types=>ty_internal_name
    RETURNING
      VALUE(ro_child_resource)     TYPE REF TO /iwbep/if_cp_resource_entity
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.