INTERFACE /iwbep/if_cp_request_function
  PUBLIC.

  INTERFACES /iwbep/if_cp_request_batch_op.

  TYPES:
         tye_http_method TYPE c LENGTH 6.

  CONSTANTS:
    BEGIN OF gcs_http_method,
      delete TYPE tye_http_method VALUE 'DELETE',
      get    TYPE tye_http_method VALUE 'GET',
      patch  TYPE tye_http_method VALUE 'PATCH',
      post   TYPE tye_http_method VALUE 'POST',
      put    TYPE tye_http_method VALUE 'PUT',
    END OF gcs_http_method.
  METHODS check_execution
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_function
    RAISING /iwbep/cx_gateway.
  METHODS execute
    IMPORTING
      iv_http_method     TYPE tye_http_method OPTIONAL
    RETURNING
      VALUE(ro_response) TYPE REF TO /iwbep/if_cp_response_function
    RAISING /iwbep/cx_gateway.
  METHODS get_response
    RETURNING
      VALUE(ro_response) TYPE REF TO /iwbep/if_cp_response_function
    RAISING /iwbep/cx_gateway.
  METHODS set_custom_query_options
    IMPORTING
      !it_custom_query_option TYPE /iwbep/if_cp_runtime_types=>ty_t_custom_query_option
    RETURNING
      VALUE(ro_request)       TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS set_http_method
    IMPORTING
      iv_http_method TYPE tye_http_method
    RAISING
      /iwbep/cx_gateway.
  METHODS set_if_match
    IMPORTING
      !iv_etag          TYPE string
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_function
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.