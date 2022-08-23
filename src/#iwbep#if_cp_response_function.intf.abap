INTERFACE /iwbep/if_cp_response_function
  PUBLIC.
  METHODS get_business_data
    EXPORTING
      !ea_response_data TYPE any
    RAISING
      /iwbep/cx_gateway.
  METHODS has_business_data
    RETURNING
      VALUE(rv_has_business_data) TYPE abap_bool
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.