
INTERFACE if_ws_transport_binding
  PUBLIC.

  METHODS set_url
    IMPORTING
      !url TYPE string
    RAISING
      cx_ai_system_fault.
  METHODS get_url
    RETURNING
      VALUE(url) TYPE string
    RAISING
      cx_ai_system_fault.
ENDINTERFACE.