INTERFACE /iwbep/if_cp_response_update_l
  PUBLIC.
  METHODS get_business_data
    EXPORTING
      !et_business_data TYPE table
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.