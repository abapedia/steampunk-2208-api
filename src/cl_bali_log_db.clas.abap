CLASS cl_bali_log_db DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_bali_log_db.

    ALIASES delete_log
      FOR if_bali_log_db~delete_log.
    ALIASES dequeue
      FOR if_bali_log_db~dequeue.
    ALIASES enqueue
      FOR if_bali_log_db~enqueue.
    ALIASES load_log
      FOR if_bali_log_db~load_log.
    ALIASES load_logs_via_filter
      FOR if_bali_log_db~load_logs_via_filter.
    ALIASES save_log
      FOR if_bali_log_db~save_log.
    ALIASES ty_2nd_db_connection
      FOR if_bali_log_db~ty_2nd_db_connection.
    ALIASES ty_assign_to_curr_appjob
      FOR if_bali_log_db~ty_assign_to_curr_appjob.
    ALIASES ty_handle
      FOR if_bali_log_db~ty_handle.
    ALIASES ty_log_ref
      FOR if_bali_log_db~ty_log_ref.
    ALIASES ty_log_table
      FOR if_bali_log_db~ty_log_table.
    ALIASES ty_read_only_header
      FOR if_bali_log_db~ty_read_only_header.
    CLASS-METHODS get_instance
      RETURNING
      VALUE(db_handler) TYPE REF TO if_bali_log_db.
ENDCLASS.

CLASS cl_bali_log_db IMPLEMENTATION.
ENDCLASS.