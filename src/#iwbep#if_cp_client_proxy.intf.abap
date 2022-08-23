INTERFACE /iwbep/if_cp_client_proxy
  PUBLIC.

  TYPES:
    ty_service_id_v2            TYPE c LENGTH 35,
    ty_service_id_v4            TYPE c LENGTH 36,
    ty_service_repository_id_v4 TYPE c LENGTH 10,
    ty_service_version_v2       TYPE n LENGTH 4,
    ty_service_version_v4       TYPE n LENGTH 4.

  TYPES:
    BEGIN OF ty_s_service_key_v2,
      service_id      TYPE ty_service_id_v2,
      service_version TYPE ty_service_version_v2,
    END OF ty_s_service_key_v2.

  TYPES:
    BEGIN OF ty_s_service_key_v4,
      repository_id   TYPE ty_service_repository_id_v4,
      service_id      TYPE ty_service_id_v4,
      service_version TYPE ty_service_version_v4,
    END OF  ty_s_service_key_v4.
  METHODS create_request_for_batch
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_batch
    RAISING
      /iwbep/cx_gateway.
  METHODS create_request_for_delta
    IMPORTING
      VALUE(iv_query_id) TYPE /iwbep/if_cp_runtime_types=>ty_delta_query_id
    RETURNING
      VALUE(ro_request)  TYPE REF TO /iwbep/if_cp_request_read_dlta
    RAISING
      /iwbep/cx_gateway.
  METHODS can_delta_request_be_created
    IMPORTING
      VALUE(iv_query_id)                    TYPE /iwbep/if_cp_runtime_types=>ty_delta_query_id
    RETURNING
      VALUE(rv_delt_request_can_be_created) TYPE abap_bool
    RAISING
      /iwbep/cx_gateway.
  METHODS create_resource_for_action
    IMPORTING
      VALUE(iv_action_import_name) TYPE /iwbep/if_cp_runtime_types=>ty_internal_name
    RETURNING
      VALUE(ro_action_resource)    TYPE REF TO /iwbep/if_cp_resource_action
    RAISING
      /iwbep/cx_gateway.
  METHODS create_resource_for_entity_set
    IMPORTING
      !iv_entity_set_name     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name
    RETURNING
      VALUE(ro_root_resource) TYPE REF TO /iwbep/if_cp_resource_list
    RAISING
      /iwbep/cx_gateway.
  METHODS create_resource_for_function
    IMPORTING
      VALUE(iv_function_name)     TYPE /iwbep/if_cp_runtime_types=>ty_operation_name
    RETURNING
      VALUE(ro_function_resource) TYPE REF TO /iwbep/if_cp_resource_function
    RAISING
      /iwbep/cx_gateway.
  METHODS does_delta_link_exist
    IMPORTING
      VALUE(iv_query_id)   TYPE /iwbep/if_cp_runtime_types=>ty_delta_query_id
    RETURNING
      VALUE(rv_does_exist) TYPE abap_bool
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.