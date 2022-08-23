INTERFACE if_xco_tab_foreign_key_content PUBLIC.
  TYPES:
    BEGIN OF ts_field_assignment,
      check_field       TYPE c LENGTH 30,
      foreign_key_table TYPE c LENGTH 30,
      foreign_key_field TYPE c LENGTH 30,
    END OF ts_field_assignment,

    tt_field_assignment TYPE HASHED TABLE OF ts_field_assignment WITH UNIQUE KEY check_field,

    BEGIN OF ts_cardinality,
      left_cardinality  TYPE REF TO cl_xco_tab_fkey_cardinality,
      right_cardinality TYPE REF TO cl_xco_tab_fkey_cardinality,
    END OF ts_cardinality,

    BEGIN OF ts_error_message,
      message_number   TYPE c LENGTH 3,
      application_area TYPE c LENGTH 20,
    END OF ts_error_message,

    BEGIN OF ts_content,
      check_table       TYPE REF TO if_xco_database_table,
      field_assignments TYPE tt_field_assignment,
      screen_check      TYPE abap_bool,
      key_type          TYPE REF TO cl_xco_tab_fkey_field_type,
      cardinality       TYPE ts_cardinality,
      error_message     TYPE ts_error_message,
    END OF ts_content.

  DATA:
    foreign_key TYPE REF TO if_xco_tab_foreign_key READ-ONLY,

    read_state  TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_check_table
      RETURNING
        VALUE(ro_check_check) TYPE REF TO if_xco_database_table,

    get_field_assignments
      RETURNING
        VALUE(rt_field_assignments) TYPE tt_field_assignment,

    get_screen_check
      RETURNING
        VALUE(rv_screen_check) TYPE abap_bool,

    get_key_type
      RETURNING
        VALUE(ro_key_type) TYPE REF TO cl_xco_tab_fkey_field_type,

    get_cardinality
      RETURNING
        VALUE(rs_cardinality) TYPE ts_cardinality,

    get_error_message
      RETURNING
        VALUE(rs_error_message) TYPE ts_error_message,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.