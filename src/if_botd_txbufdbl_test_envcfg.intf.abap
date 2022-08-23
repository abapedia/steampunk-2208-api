INTERFACE if_botd_txbufdbl_test_envcfg
  PUBLIC.

  METHODS:

    set_bdef_dependencies
           IMPORTING
            bdef_dependencies TYPE if_botd_types_def=>tt_bdef_root_entities
            RETURNING VALUE(environment_config) TYPE REF TO if_botd_txbufdbl_test_envcfg,

    handle_draft
           IMPORTING
            bdef_dependencies TYPE if_botd_types_def=>tt_bdef_root_entities
            RETURNING VALUE(environment_config) TYPE REF TO if_botd_txbufdbl_test_envcfg.

ENDINTERFACE.