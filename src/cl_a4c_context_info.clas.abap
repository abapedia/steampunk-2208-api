CLASS cl_a4c_context_info DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS get_instance
      RETURNING
        VALUE(ro_result) TYPE REF TO cl_a4c_context_info.
    METHODS get_system_description
      RETURNING
        VALUE(rv_result) TYPE string.
    METHODS is_development_allowed
      RETURNING
        VALUE(rv_result) TYPE abap_bool.

ENDCLASS.

CLASS cl_a4c_context_info IMPLEMENTATION.
ENDCLASS.