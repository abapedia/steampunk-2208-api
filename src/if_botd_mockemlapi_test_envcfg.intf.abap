INTERFACE if_botd_mockemlapi_test_envcfg
  PUBLIC.

  METHODS:
    set_bdef_dependencies
           IMPORTING
            bdef_dependencies TYPE if_botd_types_def=>tt_bdef_root_entities
            RETURNING VALUE(environment_config) TYPE REF TO if_botd_mockemlapi_test_envcfg,

    handle_draft
           IMPORTING
            bdef_dependencies TYPE if_botd_types_def=>tt_bdef_root_entities
            RETURNING VALUE(environment_config) TYPE REF TO if_botd_mockemlapi_test_envcfg.

"Disabled for the first release till we finalize the API name for custom implementation.

ENDINTERFACE.