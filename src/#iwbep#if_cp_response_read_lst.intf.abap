INTERFACE /iwbep/if_cp_response_read_lst
  PUBLIC.
  METHODS get_business_data
    EXPORTING
      !et_business_data TYPE STANDARD TABLE
    RAISING
      /iwbep/cx_gateway.
  METHODS get_count
    RETURNING
      VALUE(rv_count) TYPE int8
    RAISING
      /iwbep/cx_gateway.
  METHODS get_next
    RETURNING
      VALUE(ro_next_response) TYPE REF TO /iwbep/if_cp_response_read_lst
    RAISING
      /iwbep/cx_gateway.
  METHODS has_delta_link
    RETURNING
      VALUE(rv_has_delta_link) TYPE abap_bool
    RAISING
      /iwbep/cx_gateway.
  METHODS has_next
    RETURNING
      VALUE(rv_has_next) TYPE abap_bool
    RAISING
      /iwbep/cx_gateway.
  METHODS save_delta_link
    IMPORTING
      VALUE(iv_query_id) TYPE /iwbep/if_cp_runtime_types=>ty_delta_query_id
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.