INTERFACE if_a4c_bc_handler
  PUBLIC.

  TYPES:
    BEGIN OF ts_object_list,
      objname TYPE string,
      tabkeys TYPE REF TO data,
    END OF ts_object_list.

  TYPES:
    BEGIN OF ENUM transport_type,
      w,k,
    END OF ENUM transport_type.

  TYPES:
    tv_transport_request TYPE c LENGTH 20,
    tv_request_owner     TYPE c LENGTH 12,
    tv_target_system     TYPE c LENGTH 10,
    ts_message           TYPE symsg.

  TYPES:
    tt_object_tables TYPE TABLE OF ts_object_list,
    tt_message       TYPE STANDARD TABLE OF ts_message WITH NON-UNIQUE DEFAULT KEY.
  METHODS create_transport_request
    IMPORTING iv_target_system  TYPE tv_target_system
              iv_target_default TYPE abap_bool
              iv_request_owner  TYPE tv_request_owner
              iv_transport_type TYPE transport_type
    RETURNING VALUE(rv_trkorr)  TYPE tv_transport_request
    RAISING   cx_a4c_bc_exception.
  METHODS release_customizing_request
    IMPORTING iv_transport_request            TYPE tv_transport_request
    RETURNING VALUE(rv_released_successfully) TYPE abap_bool
    RAISING   cx_a4c_bc_exception.
  METHODS delete_customizing_request
    IMPORTING iv_transport_request           TYPE tv_transport_request
    RETURNING VALUE(rv_deleted_successfully) TYPE abap_bool
    RAISING   cx_a4c_bc_exception.
  METHODS get_customizing_content
    IMPORTING iv_transport_request TYPE tv_transport_request.
  METHODS add_to_transport_request
    IMPORTING
              iv_check_mode         TYPE abap_bool OPTIONAL
              iv_transport_request  TYPE tv_transport_request OPTIONAL
              it_object_tables      TYPE tt_object_tables
              iv_mandant_field_name TYPE string
    EXPORTING rt_messages           TYPE tt_message
              rv_success            TYPE abap_bool
              rv_transport_request  TYPE tv_transport_request
    RAISING   cx_a4c_bc_exception.

ENDINTERFACE.