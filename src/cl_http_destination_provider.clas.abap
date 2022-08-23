CLASS cl_http_destination_provider DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS create_by_url
      IMPORTING
      !i_url TYPE string
      RETURNING
      VALUE(r_http_destination) TYPE REF TO if_http_destination
      RAISING
      cx_http_dest_provider_error.
    CLASS-METHODS create_by_destination
      IMPORTING
      !i_destination TYPE rfcdest
      RETURNING
      VALUE(r_http_destination) TYPE REF TO if_http_destination
      RAISING
      cx_http_dest_provider_error.
    CLASS-METHODS create_by_cloud_destination
      IMPORTING
      !i_name TYPE string
      !i_service_instance_name TYPE if_a4c_cp_service=>ty_service_instance_name OPTIONAL
      !i_authn_mode TYPE if_a4c_cp_service=>authn_mode DEFAULT if_a4c_cp_service=>user_propagation
      RETURNING
      VALUE(r_http_destination) TYPE REF TO if_http_destination
      RAISING
      cx_http_dest_provider_error.
    CLASS-METHODS create_by_comm_arrangement
      IMPORTING
      !comm_scenario TYPE if_com_management=>ty_cscn_id
      !service_id TYPE if_com_management=>ty_cscn_outb_srv_id OPTIONAL
      !comm_system_id TYPE if_com_management=>ty_cs_id OPTIONAL
      RETURNING
      VALUE(r_http_destination) TYPE REF TO if_http_destination
      RAISING
      cx_http_dest_provider_error.
ENDCLASS.

CLASS cl_http_destination_provider IMPLEMENTATION.
ENDCLASS.