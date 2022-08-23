CLASS cl_soap_destination_provider DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS create_by_cloud_destination
      IMPORTING
      !i_name TYPE string
      !i_service_instance_name TYPE if_a4c_cp_service=>ty_service_instance_name OPTIONAL
      RETURNING
      VALUE(r_soap_destination) TYPE REF TO if_soap_destination
      RAISING
      cx_soap_destination_error.
    CLASS-METHODS create_by_url
      IMPORTING
      !i_url TYPE string
      RETURNING
      VALUE(r_soap_destination) TYPE REF TO if_soap_destination
      RAISING
      cx_soap_destination_error.
    CLASS-METHODS create_by_comm_arrangement
      IMPORTING
      !comm_scenario TYPE if_com_management=>ty_cscn_id
      !service_id TYPE if_com_management=>ty_cscn_outb_srv_id OPTIONAL
      !comm_system_id TYPE if_com_management=>ty_cs_id OPTIONAL
      RETURNING
      VALUE(r_destination) TYPE REF TO if_proxy_destination
      RAISING
      cx_soap_destination_error.
ENDCLASS.

CLASS cl_soap_destination_provider IMPLEMENTATION.
ENDCLASS.