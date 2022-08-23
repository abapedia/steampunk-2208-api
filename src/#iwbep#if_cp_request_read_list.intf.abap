INTERFACE /iwbep/if_cp_request_read_list
  PUBLIC.

  INTERFACES /iwbep/if_cp_request_batch_op.
  METHODS check_execution
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING /iwbep/cx_gateway.
  METHODS create_expand_node
    RETURNING
      VALUE(ro_expand_node) TYPE REF TO /iwbep/if_cp_expand_node
    RAISING
      /iwbep/cx_gateway.
  METHODS create_filter_factory
    RETURNING
      VALUE(ro_filter_factory) TYPE REF TO /iwbep/if_cp_filter_factory
    RAISING
      /iwbep/cx_gateway.
  METHODS create_search_node
    IMPORTING
      iv_term               TYPE string
    RETURNING
      VALUE(ro_search_node) TYPE REF TO /iwbep/if_cp_search_node
    RAISING
      /iwbep/cx_gateway.
  METHODS execute
    RETURNING
      VALUE(ro_response) TYPE REF TO /iwbep/if_cp_response_read_lst
    RAISING /iwbep/cx_gateway.
  METHODS get_response
    RETURNING
      VALUE(ro_response) TYPE REF TO /iwbep/if_cp_response_read_lst
    RAISING /iwbep/cx_gateway.
  METHODS request_count
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS request_no_business_data
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS set_custom_query_options
    IMPORTING
      !it_custom_query_option TYPE /iwbep/if_cp_runtime_types=>ty_t_custom_query_option
    RETURNING
      VALUE(ro_request)       TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS set_expand
    IMPORTING
      !io_expand_root_node TYPE REF TO /iwbep/if_cp_expand_node
    RETURNING
      VALUE(ro_request)    TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS set_filter
    IMPORTING
      !io_filter_node   TYPE REF TO /iwbep/if_cp_filter_node
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS set_search
    IMPORTING
      !iv_search_expression TYPE string
    RETURNING
      VALUE(ro_request)     TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS set_search_node
    IMPORTING
      !io_search_node   TYPE REF TO /iwbep/if_cp_search_node
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS set_orderby
    IMPORTING
      !it_orderby_property TYPE /iwbep/if_cp_runtime_types=>ty_t_sort_order
    RETURNING
      VALUE(ro_request)    TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.

  METHODS set_select_properties
    IMPORTING
      !it_select_property TYPE /iwbep/if_cp_runtime_types=>ty_t_property_path
    RETURNING
      VALUE(ro_request)   TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS set_skip
    IMPORTING
      !iv_skip          TYPE i
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS set_top
    IMPORTING
      !iv_top           TYPE i
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS track_changes
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS use_delta_link
    IMPORTING
      !iv_query_id      TYPE /iwbep/if_cp_runtime_types=>ty_delta_query_id
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.