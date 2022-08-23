INTERFACE /iwbep/if_cp_request_update
  PUBLIC.

  INTERFACES /iwbep/if_cp_request_batch_op.

  TYPES:
    ty_update_semantic TYPE c LENGTH 5.

  CONSTANTS:
    BEGIN OF gcs_update_semantic,
      patch TYPE ty_update_semantic VALUE 'PATCH',
      put   TYPE ty_update_semantic VALUE 'PUT',
    END OF gcs_update_semantic.
  METHODS check_execution
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_update
    RAISING /iwbep/cx_gateway.
  METHODS execute
    RETURNING
      VALUE(ro_response) TYPE REF TO /iwbep/if_cp_response_update
    RAISING /iwbep/cx_gateway.
  METHODS get_response
    RETURNING
      VALUE(ro_response) TYPE REF TO /iwbep/if_cp_response_update
    RAISING /iwbep/cx_gateway.
  METHODS request_no_business_data
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_update
    RAISING
      /iwbep/cx_gateway.
  METHODS set_business_data
    IMPORTING
      !is_business_data     TYPE any
      !it_provided_property TYPE /iwbep/if_cp_runtime_types=>ty_t_property_path OPTIONAL
    RETURNING
      VALUE(ro_request)     TYPE REF TO /iwbep/if_cp_request_update
    RAISING
      /iwbep/cx_gateway.
  METHODS set_custom_query_options
    IMPORTING
      !it_custom_query_option TYPE /iwbep/if_cp_runtime_types=>ty_t_custom_query_option
    RETURNING
      VALUE(ro_request)       TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS set_if_match
    IMPORTING
      !iv_etag          TYPE string
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_update
    RAISING
      /iwbep/cx_gateway.
  METHODS set_request_id
    IMPORTING
      iv_request_id     TYPE string
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_update
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.