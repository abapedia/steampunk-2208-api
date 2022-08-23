INTERFACE if_bal_logger
  PUBLIC.

  TYPES tv_repid TYPE sy-repid.
  TYPES tv_tcode TYPE sy-tcode.
  TYPES tv_username TYPE syuname.
  TYPES tv_prob_class TYPE c LENGTH 1.
  TYPES tt_lognumbers TYPE bal_t_lgnm.
  TYPES tv_loghandle TYPE balloghndl.
  TYPES tv_detlevel TYPE c LENGTH 1.
  TYPES tv_log_object TYPE balobj_d.
  TYPES tv_log_subobject TYPE balobj_d.
  TYPES tv_external_id TYPE c LENGTH 100.
  DATA mv_loghandle TYPE tv_loghandle READ-ONLY.
  DATA mv_batch_mode TYPE abap_bool READ-ONLY.
  DATA mv_max_message_memory TYPE i READ-ONLY.
  DATA mv_detlevel TYPE tv_detlevel READ-ONLY.
  DATA mv_logobject TYPE tv_log_object READ-ONLY.
  DATA mv_log_suboject TYPE tv_log_subobject READ-ONLY.
  DATA mv_log_debug_suboject TYPE tv_log_subobject READ-ONLY.
  DATA mv_message_count TYPE i READ-ONLY.
  CONSTANTS c_probclass_low TYPE tv_prob_class VALUE '4' ##NO_TEXT.
  CONSTANTS c_probclass_medium TYPE tv_prob_class VALUE '3' ##NO_TEXT.
  CONSTANTS c_probclass_high TYPE tv_prob_class VALUE '2' ##NO_TEXT.
  CONSTANTS c_probclass_vhigh TYPE tv_prob_class VALUE '1' ##NO_TEXT.
  CONSTANTS c_probclass_none TYPE tv_prob_class VALUE space ##NO_TEXT.
  EVENTS max_memory_limit_reached
    EXPORTING
      VALUE(e_number_of_messages) TYPE i OPTIONAL.
  METHODS add_exception
    IMPORTING
      !i_exception TYPE REF TO cx_root
    RAISING
      cx_bal_exception.
  METHODS add_message
    IMPORTING
      !i_probclass TYPE tv_prob_class
    RAISING
      cx_bal_exception.
  METHODS add_errortext
    IMPORTING
      !i_error_text TYPE string
    RAISING
      cx_bal_exception.
  METHODS add_statustext
    IMPORTING
      !i_status_text TYPE string
    RAISING
      cx_bal_exception.
  METHODS set_detlevel
    IMPORTING
      !i_detlevel TYPE i.
  METHODS get_detlevel
    RETURNING
      VALUE(r_detlevel) TYPE i.
  METHODS save_to_db
    IMPORTING
      !i_in_update_task TYPE abap_bool DEFAULT abap_false
      !i_2th_connection TYPE abap_bool DEFAULT abap_false
      !i_2th_connect_commit TYPE abap_bool DEFAULT abap_false
      !i_link2job TYPE abap_bool DEFAULT abap_false
      !i_save_all TYPE abap_bool DEFAULT abap_false
    RETURNING
      VALUE(rt_lognumbers) TYPE tt_lognumbers
    RAISING
      cx_bal_exception.
  METHODS refresh
    RAISING
      cx_bal_exception.
  METHODS add_debug_message
    IMPORTING
      !i_msgv3 TYPE any OPTIONAL
      !i_msgv4 TYPE any OPTIONAL
      !i_msgv2 TYPE any OPTIONAL
      !i_msgv1 TYPE any OPTIONAL
      !i_headertext TYPE c OPTIONAL
    RAISING
      cx_bal_exception.
  METHODS get_loghandle
    RETURNING
      VALUE(r_loghandle) TYPE tv_loghandle.
  METHODS refresh_messages
    RAISING
      cx_bal_exception.
ENDINTERFACE.