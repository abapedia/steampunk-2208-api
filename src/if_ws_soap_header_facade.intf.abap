INTERFACE if_ws_soap_header_facade
  PUBLIC.
  METHODS add_soap_header_element
    IMPORTING
      !iv_xml_element TYPE string
    RAISING
      cx_ws_protocol_error.

ENDINTERFACE.