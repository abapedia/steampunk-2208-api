INTERFACE if_xco_gen_tabl_s_fo_fkey PUBLIC.
  TYPES:
    tv_short_description TYPE c LENGTH 60,
    tv_message_number    TYPE c LENGTH 3,
    tv_application_area  TYPE c LENGTH 20,

    BEGIN OF ts_field_assignment,
      check_field       TYPE c LENGTH 30,
      foreign_key_table TYPE c LENGTH 30,
      foreign_key_field TYPE c LENGTH 30,
    END OF ts_field_assignment,

    tt_field_assignment TYPE HASHED TABLE OF ts_field_assignment WITH UNIQUE KEY check_field.

  DATA:
    field_name TYPE sxco_ad_field_name READ-ONLY.

  METHODS:
    set_check_table
      IMPORTING
        iv_table_name TYPE sxco_dbt_object_name
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_tabl_s_fo_fkey,

    set_field_assignments
      IMPORTING
        it_field_assignments TYPE tt_field_assignment
      RETURNING
        VALUE(ro_me)        TYPE REF TO if_xco_gen_tabl_s_fo_fkey,

    set_screen_check
      IMPORTING
        iv_check_indicator TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_gen_tabl_s_fo_fkey,

    set_key_type
      IMPORTING
        io_key_type  TYPE REF TO cl_xco_tab_fkey_field_type
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_tabl_s_fo_fkey,

    set_cardinality
      IMPORTING
        io_left_cardinality  TYPE REF TO if_xco_gen_tabl_fkey_card_left
        io_right_cardinality TYPE REF TO if_xco_gen_tabl_fkey_card_rght
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_tabl_s_fo_fkey,

    set_error_message
      IMPORTING
        iv_message_number   TYPE tv_message_number
        iv_application_area TYPE tv_application_area
      RETURNING
        VALUE(ro_me)        TYPE REF TO if_xco_gen_tabl_s_fo_fkey.
ENDINTERFACE.