INTERFACE /iwbep/if_cp_response_update
  PUBLIC.
  METHODS get_business_data
    EXPORTING
      !es_business_data TYPE any
    RAISING
      /iwbep/cx_gateway.
  METHODS get_etag
    RETURNING
      VALUE(rv_etag) TYPE string
    RAISING
      /iwbep/cx_gateway.
  METHODS get_request_id
    RETURNING
      VALUE(rv_request_id) TYPE string
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.