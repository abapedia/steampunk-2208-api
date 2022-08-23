INTERFACE if_xco_cp_bal_persistence PUBLIC.
  TYPES:
    BEGIN OF ts_header,
      object                 TYPE sxco_aplo_object_name,
      subobject              TYPE if_xco_aplo_subobject=>tv_name,
      external_id            TYPE if_xco_cp_bal_log_header=>tv_external_id,
      created_on             TYPE tzntstmps,
      created_by             TYPE sxco_user_name,
      expiry_date            TYPE d,
      keep_until_expiry_date TYPE abap_bool,
    END OF ts_header,

    BEGIN OF ts_message_input,
      level_of_detail TYPE REF TO cl_xco_bal_level_of_detail,
      message         TYPE REF TO if_xco_message,
    END OF ts_message_input,

    tt_message_input TYPE STANDARD TABLE OF ts_message_input WITH EMPTY KEY,

    BEGIN OF ts_exception_input,
      level_of_detail TYPE REF TO cl_xco_bal_level_of_detail,
      severity        TYPE REF TO cl_xco_message_type,
      exception       TYPE REF TO cx_root,
    END OF ts_exception_input,

    BEGIN OF ts_input,
      message   TYPE ts_message_input,
      exception TYPE ts_exception_input,
    END OF ts_input,

    tt_input TYPE STANDARD TABLE OF ts_input WITH EMPTY KEY,

    BEGIN OF ts_message_entry,
      message         TYPE REF TO if_xco_message,
      level_of_detail TYPE REF TO cl_xco_bal_level_of_detail,
      timestamp       TYPE REF TO not_released,
    END OF ts_message_entry,

    tt_message_entry TYPE STANDARD TABLE OF ts_message_entry WITH EMPTY KEY,

    BEGIN OF ts_exception_entry,
      level_of_detail TYPE REF TO cl_xco_bal_level_of_detail,
      severity        TYPE REF TO cl_xco_message_type,
      class_name      TYPE sxco_ao_object_name,
    END OF ts_exception_entry,

    tt_exception_entry TYPE STANDARD TABLE OF ts_exception_entry WITH EMPTY KEY,

    BEGIN OF ts_entry,
      message   TYPE ts_message_entry,
      exception TYPE ts_exception_entry,
    END OF ts_entry,

    tt_entry TYPE STANDARD TABLE OF ts_entry WITH EMPTY KEY.

  METHODS:
    create_log
      IMPORTING
        iv_object            TYPE sxco_aplo_object_name
        iv_subobject         TYPE if_xco_aplo_subobject=>tv_name
        iv_external_id       TYPE if_xco_cp_bal_log_header=>tv_external_id
      RETURNING
        VALUE(rv_log_handle) TYPE sxco_bal_log_handle,

    load_log
      IMPORTING
        iv_handle TYPE sxco_bal_log_handle,

    search_logs
      IMPORTING
        it_object_constraints        TYPE sxco_t_asql_constraints OPTIONAL
        it_subobject_constraints     TYPE sxco_t_asql_constraints OPTIONAL
        it_external_id_constraints   TYPE sxco_t_asql_constraints OPTIONAL
        io_time_restriction_interval TYPE REF TO if_xco_cp_tm_moment_interval OPTIONAL
        it_user_constraints          TYPE sxco_t_asql_constraints OPTIONAL
      RETURNING
        VALUE(rt_log_handles)        TYPE sxco_t_bal_log_handles,

    delete_log
      IMPORTING
        iv_handle TYPE sxco_bal_log_handle,

    get_lock
      IMPORTING
        iv_log_handle  TYPE sxco_bal_log_handle
      RETURNING
        VALUE(ro_lock) TYPE REF TO if_xco_dp_lock,

    read_header
      IMPORTING
        iv_log_handle    TYPE sxco_bal_log_handle
      RETURNING
        VALUE(rs_header) TYPE ts_header,

    get_entries
      IMPORTING
        iv_log_handle     TYPE sxco_bal_log_handle
      RETURNING
        VALUE(rt_entries) TYPE tt_entry,

    get_message_entries
      IMPORTING
        iv_log_handle             TYPE sxco_bal_log_handle
      RETURNING
        VALUE(rt_message_entries) TYPE tt_message_entry,

    get_exception_entries
      IMPORTING
        iv_log_handle               TYPE sxco_bal_log_handle
      RETURNING
        VALUE(rt_exception_entries) TYPE tt_exception_entry,

    add_inputs
      IMPORTING
        iv_log_handle TYPE sxco_bal_log_handle
        it_inputs     TYPE tt_input.
ENDINTERFACE.