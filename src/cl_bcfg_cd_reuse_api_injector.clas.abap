CLASS cl_bcfg_cd_reuse_api_injector DEFINITION
  PUBLIC
  FOR TESTING
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    CLASS-METHODS set_cust_obj_service_instance
      IMPORTING
        io_cust_object_service TYPE REF TO if_bcfg_cd_cust_object_service.

    CLASS-METHODS set_transport_service_instance
      IMPORTING
        io_transport_service TYPE REF TO if_bcfg_cd_transport_service.

  PROTECTED SECTION.
ENDCLASS.

CLASS cl_bcfg_cd_reuse_api_injector IMPLEMENTATION.
ENDCLASS.