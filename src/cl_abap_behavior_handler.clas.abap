CLASS cl_abap_behavior_handler DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_behv
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS:
      BEGIN OF fc,
      unrestricted TYPE abp_behv_feature VALUE 0,
      mandatory    TYPE abp_behv_feature VALUE 1,
      read_only    TYPE abp_behv_feature VALUE 2,
      END OF fc.

    CONSTANTS: BEGIN OF fco,
             disabled TYPE abp_behv_flag VALUE 0,
             enabled  TYPE abp_behv_flag VALUE 1,
           END OF fco.
  PROTECTED SECTION.

    TYPES:
      BEGIN OF t_std_param,
      r_failed   TYPE REF TO data,                   " CHANGING standard param
      r_mapped   TYPE REF TO data,                   " CHANGING standard param
      r_reported TYPE REF TO data,                   " CHANGING standard param
      root       TYPE abp_root_entity_name,          " for ab_gl.behv during execution
      r_image    TYPE REF TO if_abap_behv=>t_image,  " IMPORTING standard param (for READ)
      END OF t_std_param.
ENDCLASS.

CLASS cl_abap_behavior_handler IMPLEMENTATION.
ENDCLASS.