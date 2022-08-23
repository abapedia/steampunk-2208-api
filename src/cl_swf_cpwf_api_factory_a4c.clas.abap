CLASS cl_swf_cpwf_api_factory_a4c DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS get_api_instance
      RETURNING
        VALUE(ro_instance) TYPE REF TO if_swf_cpwf_api
      RAISING
        cx_swf_cpwf_api.
ENDCLASS.

CLASS cl_swf_cpwf_api_factory_a4c IMPLEMENTATION.
ENDCLASS.