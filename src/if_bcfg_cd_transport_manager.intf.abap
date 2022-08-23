INTERFACE if_bcfg_cd_transport_manager
  PUBLIC.
  TYPES ty_transport_request TYPE c LENGTH 20.
  TYPES ty_task TYPE c LENGTH 20.
  TYPES ty_request_owner TYPE c LENGTH 12.
  TYPES ty_description TYPE c LENGTH 60.
  TYPES:
    BEGIN OF ENUM request_type,
      cross_client_customizing,
      customizing,
    END OF ENUM request_type.
  TYPES:
    BEGIN OF ty_transport,
      request TYPE ty_transport_request,
      type    TYPE request_type,
    END OF ty_transport.
  TYPES:
    ty_t_transport TYPE STANDARD TABLE OF ty_transport WITH DEFAULT KEY.
  METHODS get_task
    RETURNING
      VALUE(rv_task) TYPE ty_task
    RAISING
      cx_bcfg_transport_request.
  METHODS set_transport
    IMPORTING
      !iv_transport_request TYPE ty_transport_request
    RAISING
      cx_bcfg_transport_request.
  METHODS get_open_requests
    IMPORTING
      !iv_username TYPE ty_request_owner DEFAULT sy-uname
    RETURNING
      VALUE(rt_requests) TYPE ty_t_transport
    RAISING
      cx_bcfg_transport_request.
  METHODS get_default_open_request
    RETURNING
      VALUE(rs_request) TYPE ty_transport.
  METHODS create
    IMPORTING
      !iv_description TYPE ty_description
    RETURNING
      VALUE(rv_request) TYPE ty_transport_request
    RAISING
      cx_bcfg_transport_request.
ENDINTERFACE.