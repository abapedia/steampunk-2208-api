INTERFACE if_http_service_extension
  PUBLIC.
  METHODS handle_request
    IMPORTING
      VALUE(request)  TYPE REF TO if_web_http_request
      VALUE(response) TYPE REF TO if_web_http_response.
ENDINTERFACE.