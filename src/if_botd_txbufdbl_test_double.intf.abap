INTERFACE if_botd_txbufdbl_test_double
  PUBLIC.
  INTERFACES if_abap_behavior_testdouble.
  METHODS create_modify_input_config
    RETURNING
      VALUE(result) TYPE REF TO if_botd_bufdbl_in_cfg_mod.
  METHODS create_modify_output_config
    RETURNING
      VALUE(result) TYPE REF TO if_botd_bufdbl_out_cfg_mod.
  METHODS create_read_input_config
    RETURNING
      VALUE(result) TYPE REF TO if_botd_bufdbl_in_cfg_read.
  METHODS create_read_output_config
    RETURNING
      VALUE(result) TYPE REF TO if_botd_bufdbl_out_cfg_read.
  METHODS configure_additional_behavior
    RETURNING VALUE(bo_testdouble_configuration) TYPE REF TO if_botd_bufdbl_add_behv_config.
  METHODS clear_double.
  METHODS insert_test_data
    IMPORTING
      instances TYPE STANDARD TABLE.

ENDINTERFACE.