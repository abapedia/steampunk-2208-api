CLASS cl_pcf_field_validation DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ty_gs_entity,
        name      TYPE c LENGTH 30,
        alias(30) TYPE c,
      END OF ty_gs_entity.
    CLASS-METHODS create_instance
      IMPORTING
        !ir_failed         TYPE REF TO data
        !ir_reported       TYPE REF TO data
        !is_entity         TYPE ty_gs_entity
      RETURNING
        VALUE(ro_instance) TYPE REF TO cl_pcf_field_validation.
    METHODS validate_fields
      IMPORTING
        !ir_keys TYPE REF TO data.
    METHODS precheck_fields
      IMPORTING
        !ir_entities TYPE REF TO data.

ENDCLASS.

CLASS cl_pcf_field_validation IMPLEMENTATION.
ENDCLASS.