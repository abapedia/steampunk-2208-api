CLASS cl_abap_behv_aux DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    CLASS-METHODS get_current_handler_kind
      EXPORTING
      !root_entity TYPE abp_root_entity_name
      RETURNING
      VALUE(handler_kind) TYPE abp_behv_kind.
    CLASS-METHODS get_current_context
      EXPORTING
      !in_local_mode TYPE xsdboolean
      !draft_activate TYPE xsdboolean
      !for_permissions TYPE xsdboolean
      !from_projection TYPE abp_root_entity_name
      !from_interface TYPE abp_root_entity_name
      !privileged TYPE xsdboolean.
ENDCLASS.

CLASS cl_abap_behv_aux IMPLEMENTATION.
ENDCLASS.