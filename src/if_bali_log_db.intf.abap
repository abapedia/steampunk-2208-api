INTERFACE if_bali_log_db
  PUBLIC.
  TYPES ty_assign_to_curr_appjob TYPE abap_bool.
  TYPES ty_2nd_db_connection TYPE abap_bool.
  TYPES ty_handle TYPE balloghndl.
  TYPES ty_read_only_header TYPE abap_bool.
  TYPES ty_log_ref TYPE REF TO if_bali_log.
  TYPES:
    ty_log_table TYPE STANDARD TABLE OF ty_log_ref WITH EMPTY KEY.
  METHODS load_log
    IMPORTING
      !handle TYPE ty_handle
      !read_only_header TYPE ty_read_only_header DEFAULT abap_false
    RETURNING
      VALUE(log) TYPE REF TO if_bali_log
    RAISING
      cx_bali_runtime.
  METHODS load_logs_via_filter
    IMPORTING
      !filter TYPE REF TO if_bali_log_filter
      !read_only_header TYPE ty_read_only_header DEFAULT abap_false
    RETURNING
      VALUE(log_table) TYPE ty_log_table
    RAISING
      cx_bali_runtime.
  METHODS save_log
    IMPORTING
      !log TYPE REF TO if_bali_log
      !use_2nd_db_connection TYPE ty_2nd_db_connection DEFAULT abap_false
      !assign_to_current_appl_job TYPE ty_assign_to_curr_appjob DEFAULT abap_false
    RAISING
      cx_bali_runtime.
  METHODS delete_log
    IMPORTING
      !log TYPE REF TO if_bali_log
    RAISING
      cx_bali_runtime.
  METHODS enqueue
    IMPORTING
      !log TYPE REF TO if_bali_log
    RAISING
      cx_bali_runtime.
  METHODS dequeue
    IMPORTING
      !log TYPE REF TO if_bali_log
    RAISING
      cx_bali_runtime.
ENDINTERFACE.