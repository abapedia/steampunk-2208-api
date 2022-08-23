CLASS cl_ws_protocol_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS get_soap_header_protocol
      IMPORTING
        !io_proxy             TYPE REF TO if_proxy_basis
      RETURNING
        VALUE(rheader_facade) TYPE REF TO if_ws_soap_header_facade
      RAISING
        cx_ws_protocol_error.

ENDCLASS.

CLASS cl_ws_protocol_factory IMPLEMENTATION.
ENDCLASS.