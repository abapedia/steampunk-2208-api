CLASS cl_bcfg_cd_reuse_api_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    TYPES ty_object_name TYPE c LENGTH 30.
    TYPES:
      BEGIN OF ENUM ty_object_type,
        simple_table,
      END OF ENUM ty_object_type.
    CLASS-METHODS get_cust_obj_service_instance
      IMPORTING
      !iv_objectname TYPE ty_object_name
      !iv_objecttype TYPE ty_object_type
      RETURNING
      VALUE(ro_cust_object_service) TYPE REF TO if_bcfg_cd_cust_object_service.
    CLASS-METHODS get_transport_service_instance
      IMPORTING
      !iv_objectname TYPE ty_object_name
      !iv_objecttype TYPE ty_object_type
      RETURNING
      VALUE(ro_transport_service) TYPE REF TO if_bcfg_cd_transport_service.
ENDCLASS.

CLASS cl_bcfg_cd_reuse_api_factory IMPLEMENTATION.
ENDCLASS.