CLASS xco_cp_abap_objects DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      visibility     TYPE REF TO cl_xco_ao_visibility_f READ-ONLY,
      parameter_kind TYPE REF TO cl_xco_ao_parameter_kind_f READ-ONLY,
      origin         TYPE REF TO cl_xco_cp_ao_origin_factory READ-ONLY,
      version        TYPE REF TO cl_xco_cp_ao_version_f READ-ONLY.

ENDCLASS.

CLASS xco_cp_abap_objects IMPLEMENTATION.
ENDCLASS.