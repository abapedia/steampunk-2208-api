CLASS cl_fp_fdp_services DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS get_instance
      IMPORTING
      !iv_service_definition TYPE if_fp_fdp_api=>ty_service_definition
      !iv_root_node TYPE string OPTIONAL
      RETURNING
      VALUE(ro_api) TYPE REF TO if_fp_fdp_api
      RAISING
      cx_fp_fdp_error.
ENDCLASS.

CLASS cl_fp_fdp_services IMPLEMENTATION.
ENDCLASS.