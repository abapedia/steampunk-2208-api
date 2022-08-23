INTERFACE if_xco_str_foreign_key_content PUBLIC.
  DATA:
    foreign_key TYPE REF TO if_xco_str_foreign_key READ-ONLY,

    read_state  TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_check_table
      RETURNING
        VALUE(ro_check_check) TYPE REF TO if_xco_database_table,

    get_field_assignments
      RETURNING
        VALUE(rt_field_assignments) TYPE if_xco_tab_foreign_key_content=>tt_field_assignment,

    get_screen_check
      RETURNING
        VALUE(rv_screen_check) TYPE abap_bool,

    get_key_type
      RETURNING
        VALUE(ro_key_type) TYPE REF TO cl_xco_tab_fkey_field_type,

    get_cardinality
      RETURNING
        VALUE(rs_cardinality) TYPE if_xco_tab_foreign_key_content=>ts_cardinality,

    get_error_message
      RETURNING
        VALUE(rs_error_message) TYPE if_xco_tab_foreign_key_content=>ts_error_message,

    get
      RETURNING
        VALUE(rs_content) TYPE if_xco_tab_foreign_key_content=>ts_content.
ENDINTERFACE.