CLASS cl_abap_behv_test_environment DEFINITION
  PUBLIC
  CREATE PRIVATE FOR TESTING.

  PUBLIC SECTION.
    CLASS-METHODS set_test_double
      IMPORTING
        !object TYPE REF TO if_abap_behavior_testdouble.
    CLASS-METHODS unset_test_double
      IMPORTING
        !root TYPE abp_root_entity_name.

  PROTECTED SECTION.
ENDCLASS.

CLASS cl_abap_behv_test_environment IMPLEMENTATION.
ENDCLASS.