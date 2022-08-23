INTERFACE if_botd_mockemlapi_test_double
  PUBLIC.
  INTERFACES if_abap_behavior_testdouble.
  METHODS configure_call
    RETURNING VALUE(bo_testdouble_configuration) TYPE REF TO if_botd_mockeml_call_config.
  METHODS clear_double.
  METHODS verify
    RETURNING
      VALUE(behavior_verification) TYPE REF TO if_botd_mockeml_verification.

ENDINTERFACE.