INTERFACE if_botd_mockemlapi_bo_test_env
  PUBLIC.
  METHODS get_test_double
    IMPORTING
              root_name     TYPE abp_root_entity_name
    RETURNING VALUE(double) TYPE REF TO if_botd_mockemlapi_test_double.
  METHODS clear_doubles.
  METHODS destroy.

ENDINTERFACE.