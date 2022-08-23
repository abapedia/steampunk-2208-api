INTERFACE if_botd_types_def
  PUBLIC.
  TYPES:
      tt_bdef_root_entities         TYPE STANDARD TABLE OF abp_root_entity_name  WITH DEFAULT KEY,
      tt_abap_behv_custom_test_dbls TYPE STANDARD TABLE OF REF TO if_abap_behavior_testdouble WITH DEFAULT KEY.

ENDINTERFACE.