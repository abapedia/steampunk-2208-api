CLASS cl_rfc_destination_provider DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    CONSTANTS: proxy_type_internet TYPE string VALUE 'Internet' ##NO_TEXT
               ,proxy_type_onpremise TYPE string VALUE 'OnPremise' ##NO_TEXT
               ,co_type_smtp TYPE string VALUE 'MAIL' ##NO_TEXT
      .

    CLASS-METHODS:

      create_by_cloud_destination
        IMPORTING
          VALUE(i_name)            TYPE string
          !i_service_instance_name TYPE svc_instance_name OPTIONAL
        RETURNING
          VALUE(r_rfc_destination) TYPE REF TO if_rfc_dest
        RAISING
          cx_rfc_dest_provider_error,

       create_by_comm_arrangement
       IMPORTING
         comm_scenario  TYPE if_com_management=>ty_cscn_id
         service_id     TYPE if_com_management=>ty_cscn_outb_srv_id OPTIONAL
         comm_system_id TYPE if_com_management=>ty_cs_id OPTIONAL
       RETURNING
          VALUE(r_rfc_destination) TYPE REF TO if_rfc_dest
        RAISING
          cx_rfc_dest_provider_error.

ENDCLASS.

CLASS cl_rfc_destination_provider IMPLEMENTATION.
ENDCLASS.