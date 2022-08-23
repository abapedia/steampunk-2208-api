CLASS cl_a4c_cp_service_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS:
      create_by_cp_service_name
        IMPORTING
                  iv_instance_name TYPE if_a4c_cp_service=>ty_service_instance_name
                  iv_service_type  TYPE if_a4c_cp_service=>ty_service_type
        RETURNING
                  VALUE(ro_result) TYPE REF TO if_a4c_cp_service
        RAISING   cx_a4c_cp_svc_inst_not_exist,

      get_service_name_by_id
        IMPORTING
                  iv_service_id           TYPE if_a4c_cp_service=>ty_service_instance_id
        RETURNING VALUE(rv_instance_name) TYPE if_a4c_cp_service=>ty_service_instance_name
        RAISING
                  cx_a4c_cp_svc_inst_not_exist,

      cp_service_exists
        IMPORTING
          iv_instance_name TYPE if_a4c_cp_service=>ty_service_instance_name
          iv_service_type  TYPE if_a4c_cp_service=>ty_service_type
        RETURNING
          VALUE(rv_result) TYPE abap_bool,

      cp_service_exists_for_other_ca
        IMPORTING
          iv_instance_name TYPE if_a4c_cp_service=>ty_service_instance_name
          iv_service_type  TYPE if_a4c_cp_service=>ty_service_type
          iv_current_ca    TYPE sysuuid_x16
        RETURNING
          VALUE(rv_result) TYPE abap_bool,

      cp_service_ca_exists
        IMPORTING
          iv_ca_uuid       TYPE sysuuid_x16
        RETURNING
          VALUE(rv_result) TYPE abap_bool.

ENDCLASS.

CLASS cl_a4c_cp_service_factory IMPLEMENTATION.
ENDCLASS.