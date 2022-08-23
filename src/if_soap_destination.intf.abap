INTERFACE if_soap_destination
  PUBLIC.

  INTERFACES if_proxy_destination.

  TYPES tv_operation TYPE c LENGTH 30.

  CONSTANTS soap_version_11 TYPE string VALUE tsrtp_f_bdg_type_soap11_http.
  CONSTANTS soap_version_12 TYPE string VALUE tsrtp_f_bdg_type_soap12_http.
  METHODS set_soap_version
    IMPORTING
      !i_soap_version TYPE string
    RAISING
      cx_soap_destination_error.
  METHODS set_url
    IMPORTING
      !i_url TYPE string
    RAISING
      cx_soap_destination_error.
  METHODS set_soap_action
    IMPORTING
      !i_operation TYPE tv_operation
      !i_action    TYPE string
    RAISING
      cx_soap_destination_error.
  METHODS set_max_wait_time
    IMPORTING
      !i_max_wait_time TYPE int4
    RAISING
      cx_soap_destination_error.
  METHODS set_compress_message
    IMPORTING
      !i_compress_message TYPE abap_bool
    RAISING
      cx_soap_destination_error.
  METHODS set_basic_authentication
    IMPORTING
      !i_user     TYPE string
      !i_password TYPE string
    RAISING
      cx_soap_destination_error.
  METHODS set_scc
    IMPORTING
      i_location_id TYPE string
    RAISING
      cx_soap_destination_error.
  METHODS use_client_certificate
    RAISING
      cx_soap_destination_error.

ENDINTERFACE.