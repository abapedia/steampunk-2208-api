INTERFACE /iwbep/if_cp_response_read_01
  PUBLIC.
  METHODS get_business_data
    EXPORTING
      !et_business_data TYPE STANDARD TABLE
    RAISING
      /iwbep/cx_gateway.
  METHODS get_etag
    RETURNING
      VALUE(rv_etag) TYPE string
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.