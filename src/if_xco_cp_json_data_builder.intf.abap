INTERFACE if_xco_cp_json_data_builder PUBLIC.
  METHODS:
    begin_object
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_json_data_builder,

    end_object
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_json_data_builder,

    begin_array
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_json_data_builder,

    end_array
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_json_data_builder,

    add_member
      IMPORTING
        iv_name      TYPE clike
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_json_data_builder,

    add_string
      IMPORTING
        iv_value     TYPE clike
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_json_data_builder,

    add_number
      IMPORTING
        iv_value     TYPE numeric
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_json_data_builder,

    add_boolean
      IMPORTING
        iv_value     TYPE abap_bool
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_json_data_builder,

    add_null
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_json_data_builder,

    get_data
      RETURNING
        VALUE(ro_data) TYPE REF TO if_xco_cp_json_data.
ENDINTERFACE.