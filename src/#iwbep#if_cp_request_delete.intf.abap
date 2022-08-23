INTERFACE /iwbep/if_cp_request_delete
  PUBLIC.

  INTERFACES /iwbep/if_cp_request_batch_op.
  METHODS check_execution
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_delete
    RAISING /iwbep/cx_gateway.
  METHODS execute
    RAISING /iwbep/cx_gateway.
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
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_delete
    RAISING
      /iwbep/cx_gateway.
  METHODS set_request_id
    IMPORTING
      iv_request_id     TYPE string
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_delete
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.