CLASS xco_cp_abap DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      BEGIN OF ts_type,
        built_in TYPE REF TO cl_xco_abap_t_built_in_factory,
        generic  TYPE REF TO cl_xco_abap_t_generic_factory,
      END OF ts_type.

    CLASS-DATA:
      repository TYPE REF TO if_xco_abap_repository READ-ONLY,

      type       TYPE ts_type READ-ONLY.

    CLASS-METHODS:

      class
        IMPORTING
          iv_name         TYPE sxco_ao_object_name
        RETURNING
          VALUE(ro_class) TYPE REF TO if_xco_ao_class,

      interface
        IMPORTING
          iv_name             TYPE sxco_ao_object_name
        RETURNING
          VALUE(ro_interface) TYPE REF TO if_xco_ao_interface,

      function_group
        IMPORTING
          iv_name                  TYPE sxco_fg_object_name
        RETURNING
          VALUE(ro_function_group) TYPE REF TO if_xco_function_group,

      function_module
        IMPORTING
          iv_name                   TYPE sxco_fm_name
        RETURNING
          VALUE(ro_function_module) TYPE REF TO if_xco_function_module.
ENDCLASS.

CLASS xco_cp_abap IMPLEMENTATION.
ENDCLASS.