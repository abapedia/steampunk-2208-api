CLASS cl_bal_logging DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_bal_logger.
    CLASS-METHODS create_instance
      IMPORTING
      !i_log_object TYPE if_bal_logger~tv_log_object
      !i_log_subobject TYPE if_bal_logger~tv_log_subobject
      !i_debug_subobject TYPE if_bal_logger~tv_log_subobject OPTIONAL
      !i_reorg_in_days TYPE i DEFAULT 3
      !i_external_id TYPE if_bal_logger~tv_external_id OPTIONAL
      !i_max_msg_in_mem TYPE i DEFAULT 9999
      !i_loghandle TYPE if_bal_logger~tv_loghandle OPTIONAL
      !i_log_username TYPE if_bal_logger~tv_username DEFAULT sy-uname
      !i_log_repid TYPE if_bal_logger~tv_repid DEFAULT sy-repid
      !i_log_tcode TYPE if_bal_logger~tv_tcode DEFAULT sy-tcode
      RETURNING
      VALUE(ro_logger) TYPE REF TO if_bal_logger
      RAISING
      cx_bal_exception.
  PROTECTED SECTION.
ENDCLASS.

CLASS cl_bal_logging IMPLEMENTATION.
ENDCLASS.