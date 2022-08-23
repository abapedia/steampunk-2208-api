INTERFACE if_proxy_destination
  PUBLIC.

  METHODS get_logical_port_name
    IMPORTING
      !iv_proxy_name TYPE char30
    RETURNING
      VALUE(rv_logical_port_name) TYPE prx_logical_port_name
    RAISING
      cx_ai_system_fault.
ENDINTERFACE.