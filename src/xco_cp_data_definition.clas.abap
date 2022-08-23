CLASS xco_cp_data_definition DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      type              TYPE REF TO cl_xco_ddef_type_f READ-ONLY,

      text_attribute    TYPE REF TO cl_xco_cp_ddef_text_attr_f READ-ONLY,

      object_read_state TYPE REF TO cl_xco_cp_ddef_obj_rd_state_f READ-ONLY,
      object_state      TYPE REF TO cl_xco_ddef_object_state_f READ-ONLY.

ENDCLASS.

CLASS xco_cp_data_definition IMPLEMENTATION.
ENDCLASS.