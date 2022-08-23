CLASS cl_web_http_server_utility DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    CONSTANTS co_disabled TYPE i VALUE 0 ##NO_TEXT.
    CONSTANTS co_enabled TYPE i VALUE 1 ##NO_TEXT.

    CLASS-METHODS create_abs_url
      IMPORTING
      !protocol TYPE string DEFAULT ''
      !host TYPE string DEFAULT ''
      !port TYPE string DEFAULT ''
      !path TYPE string DEFAULT ''
      !querystring TYPE string DEFAULT ''
      !request TYPE REF TO if_web_http_request
      RETURNING
      VALUE(url) TYPE string.
    CLASS-METHODS logoff
      IMPORTING
      !delete_mysapsso2_cookie TYPE abap_bool DEFAULT abap_true
      !propagate_logoff TYPE abap_bool DEFAULT abap_true
      !redirect_url TYPE string
      !request TYPE REF TO if_web_http_request
      EXPORTING
      !redirect_allowlist_failed TYPE abap_bool
      RAISING
      cx_logoff_failed.
    CLASS-METHODS set_session_stateful
      IMPORTING
      !stateful TYPE i DEFAULT co_enabled
      !path TYPE string DEFAULT ''
      !request TYPE REF TO if_web_http_request.
    CLASS-METHODS get_web_http_response
      RETURNING
      VALUE(web_http_response) TYPE REF TO if_web_http_response.
ENDCLASS.

CLASS cl_web_http_server_utility IMPLEMENTATION.
ENDCLASS.