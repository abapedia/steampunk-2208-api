CLASS cl_web_odata_client_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
           ty_service_definition_name TYPE c LENGTH 40.
    CLASS-METHODS create_v2_local_proxy
      IMPORTING
        !is_service_key        TYPE /iwbep/if_cp_client_proxy=>ty_s_service_key_v2
      RETURNING
        VALUE(ro_client_proxy) TYPE REF TO /iwbep/if_cp_client_proxy
      RAISING
        /iwbep/cx_gateway.
    CLASS-METHODS create_v2_remote_proxy
      IMPORTING
        !iv_service_definition_name TYPE ty_service_definition_name
        !io_http_client             TYPE REF TO if_web_http_client
        !iv_relative_service_root   TYPE string
      RETURNING
        VALUE(ro_client_proxy)      TYPE REF TO /iwbep/if_cp_client_proxy
      RAISING
        /iwbep/cx_gateway
        cx_web_http_client_error.
    CLASS-METHODS create_v4_remote_proxy
      IMPORTING
        !iv_service_definition_name TYPE ty_service_definition_name
        !io_http_client             TYPE REF TO if_web_http_client
        !iv_relative_service_root   TYPE string
      RETURNING
        VALUE(ro_client_proxy)      TYPE REF TO /iwbep/if_cp_client_proxy
      RAISING
        /iwbep/cx_gateway
        cx_web_http_client_error.
    CLASS-METHODS create_v4_local_proxy
      IMPORTING
        !is_service_key        TYPE /iwbep/if_cp_client_proxy=>ty_s_service_key_v4
      RETURNING
        VALUE(ro_client_proxy) TYPE REF TO /iwbep/if_cp_client_proxy
      RAISING
        /iwbep/cx_gateway.

ENDCLASS.

CLASS cl_web_odata_client_factory IMPLEMENTATION.
ENDCLASS.