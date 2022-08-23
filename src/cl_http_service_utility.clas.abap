CLASS cl_http_service_utility DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    CONSTANTS csrf_header TYPE string VALUE 'X-CSRF-Token' ##NO_TEXT.
    CONSTANTS method_get TYPE string VALUE 'GET' ##NO_TEXT.
    CONSTANTS method_head TYPE string VALUE 'HEAD' ##NO_TEXT.
    CONSTANTS csrf_header_value_fetch TYPE string VALUE 'fetch' ##NO_TEXT.
    CONSTANTS csrf_header_value_required TYPE string VALUE 'Required' ##NO_TEXT.
    CONSTANTS http_code_forbidden TYPE i VALUE 403 ##NO_TEXT.
    CONSTANTS http_text_forbidden TYPE string VALUE 'Forbidden' ##NO_TEXT.

    CLASS-METHODS handle_csrf
      IMPORTING
      !request TYPE REF TO if_web_http_request
      !response TYPE REF TO if_web_http_response
      RETURNING
      VALUE(valid_token) TYPE abap_bool
      RAISING
      cx_web_message_error.
ENDCLASS.

CLASS cl_http_service_utility IMPLEMENTATION.
ENDCLASS.