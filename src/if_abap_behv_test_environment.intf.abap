INTERFACE if_abap_behv_test_environment
  PUBLIC.
  TYPES:
      tt_bdef_root_entities         TYPE STANDARD TABLE OF abp_root_entity_name  WITH DEFAULT KEY,
"      tt_rap_bo_extended_test_dbls  type standard table of ref to cl_rap_bo_test_double with default key,
      tt_abap_behv_custom_test_dbls TYPE STANDARD TABLE OF REF TO if_abap_behavior_testdouble WITH DEFAULT KEY.
  METHODS get_test_double
    IMPORTING
              root_name     TYPE abp_root_entity_name
    RETURNING VALUE(double) TYPE REF TO  if_abap_behavior_testdouble.
  METHODS clear_doubles.
  METHODS destroy.

ENDINTERFACE.