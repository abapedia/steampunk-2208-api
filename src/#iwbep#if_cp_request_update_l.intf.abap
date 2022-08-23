INTERFACE /iwbep/if_cp_request_update_l
  PUBLIC.
  METHODS create_data_descripton_node
    RETURNING
      VALUE(ro_data_description_node) TYPE REF TO /iwbep/if_cp_data_desc_node_l
    RAISING
      /iwbep/cx_gateway.
  METHODS execute
    RETURNING
      VALUE(ro_response) TYPE REF TO /iwbep/if_cp_response_update_l
    RAISING /iwbep/cx_gateway.
  METHODS request_continue_on_error
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_update_l
    RAISING
      /iwbep/cx_gateway.
  METHODS request_no_business_data
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_update_l
    RAISING
      /iwbep/cx_gateway.
  METHODS set_business_data
    IMPORTING
      !it_business_data TYPE table
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_update_l
    RAISING
      /iwbep/cx_gateway.
  METHODS set_custom_query_options
    IMPORTING
      !it_custom_query_option TYPE /iwbep/if_cp_runtime_types=>ty_t_custom_query_option
    RETURNING
      VALUE(ro_request)       TYPE REF TO /iwbep/if_cp_request_read_list
    RAISING
      /iwbep/cx_gateway.
  METHODS set_deep_business_data
    IMPORTING
      !it_business_data    TYPE table
      !io_data_description TYPE REF TO /iwbep/if_cp_data_desc_node_l
    RETURNING
      VALUE(ro_request)    TYPE REF TO /iwbep/if_cp_request_update_l
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.