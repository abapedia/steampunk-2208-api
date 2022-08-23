INTERFACE /iwbep/if_cp_request_create
  PUBLIC.

  INTERFACES /iwbep/if_cp_request_batch_op.
  METHODS check_execution
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_create
    RAISING /iwbep/cx_gateway.
  METHODS create_data_descripton_node
    RETURNING
      VALUE(ro_data_description_node) TYPE REF TO /iwbep/if_cp_data_desc_node
    RAISING
      /iwbep/cx_gateway.
  METHODS create_res_w_content_id_ref
    RETURNING
      VALUE(ro_resource) TYPE REF TO /iwbep/if_cp_resource_entity
    RAISING
      /iwbep/cx_gateway.
  METHODS execute
    RETURNING
      VALUE(ro_response) TYPE REF TO /iwbep/if_cp_response_create
    RAISING /iwbep/cx_gateway.
  METHODS get_response
    RETURNING
      VALUE(ro_response) TYPE REF TO /iwbep/if_cp_response_create
    RAISING /iwbep/cx_gateway.
  METHODS request_no_business_data
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_create
    RAISING
      /iwbep/cx_gateway.
  METHODS set_business_data
    IMPORTING
      !is_business_data     TYPE any
      !it_provided_property TYPE /iwbep/if_cp_runtime_types=>ty_t_property_path OPTIONAL
    RETURNING
      VALUE(ro_request)     TYPE REF TO /iwbep/if_cp_request_create
    RAISING
      /iwbep/cx_gateway.
  METHODS set_custom_query_options
    IMPORTING
      !it_custom_query_option TYPE /iwbep/if_cp_runtime_types=>ty_t_custom_query_option
    RETURNING
      VALUE(ro_request)       TYPE REF TO /iwbep/if_cp_request_create
    RAISING
      /iwbep/cx_gateway.
  METHODS set_deep_business_data
    IMPORTING
      !is_business_data    TYPE any
      !io_data_description TYPE REF TO /iwbep/if_cp_data_desc_node
    RETURNING
      VALUE(ro_request)    TYPE REF TO /iwbep/if_cp_request_create
    RAISING
      /iwbep/cx_gateway.
  METHODS set_request_id
    IMPORTING
      iv_request_id     TYPE string
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_create
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.