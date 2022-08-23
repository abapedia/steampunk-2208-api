INTERFACE if_botd_bufdbl_add_behv_config
  PUBLIC.
  METHODS
    for_modify_create
      RETURNING VALUE(modify_input_setter) TYPE REF TO if_botd_bufdbl_in_set_mod.
  METHODS
    for_modify_create_ba
      RETURNING VALUE(modify_input_setter) TYPE REF TO if_botd_bufdbl_in_set_mod.
  METHODS
    for_modify_update
      RETURNING VALUE(modify_input_setter) TYPE REF TO if_botd_bufdbl_in_set_mod.
  METHODS
    for_modify_delete
      RETURNING VALUE(modify_input_setter) TYPE REF TO if_botd_bufdbl_in_set_mod.
  METHODS
    for_read
      RETURNING VALUE(read_input_setter) TYPE REF TO if_botd_bufdbl_in_set_read.
  METHODS
    for_read_ba
      RETURNING VALUE(read_input_setter) TYPE REF TO if_botd_bufdbl_in_set_read.
  METHODS set_fields_handler
    IMPORTING fields_handler TYPE REF TO if_botd_bufdbl_fields_handler.

ENDINTERFACE.