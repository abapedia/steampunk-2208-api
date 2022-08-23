CLASS cl_botd_txbufdbl_bo_test_env DEFINITION FOR TESTING
  PUBLIC
  CREATE PRIVATE.

  PUBLIC SECTION.
    INTERFACES: if_botd_txbufdbl_bo_test_env.
    CLASS-METHODS prepare_environment_config
      RETURNING VALUE(environment_config) TYPE REF TO if_botd_txbufdbl_test_envcfg.
    CLASS-METHODS create
        IMPORTING
         environment_config TYPE REF TO if_botd_txbufdbl_test_envcfg
        RETURNING
        VALUE(result)       TYPE REF TO if_botd_txbufdbl_bo_test_env.

  PROTECTED SECTION.
ENDCLASS.

CLASS cl_botd_txbufdbl_bo_test_env IMPLEMENTATION.
ENDCLASS.