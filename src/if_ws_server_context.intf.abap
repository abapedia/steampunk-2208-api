
INTERFACE if_ws_server_context
  PUBLIC.

  METHODS get_protocol
    IMPORTING
      !protocol_name TYPE string
    RETURNING
      VALUE(protocol) TYPE REF TO if_wsprotocol
    RAISING
      cx_ai_system_fault.
  METHODS get_transport_binding
    RETURNING
      VALUE(transport_binding) TYPE REF TO if_ws_transport_binding.
ENDINTERFACE.