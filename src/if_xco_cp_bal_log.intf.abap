INTERFACE if_xco_cp_bal_log PUBLIC.
  INTERFACES:
    if_xco_news,
    if_xco_text.

  DATA:
    handle     TYPE sxco_bal_log_handle READ-ONLY,

    header     TYPE REF TO if_xco_cp_bal_log_header READ-ONLY,

    messages   TYPE REF TO if_xco_cp_bal_log_messages_fct READ-ONLY,
    exceptions TYPE REF TO if_xco_cp_bal_log_exceptions_f READ-ONLY.

  METHODS:
    add_news
      IMPORTING
        io_news            TYPE REF TO if_xco_news
        io_level_of_detail TYPE REF TO cl_xco_bal_level_of_detail OPTIONAL,

    add_text
      IMPORTING
        io_text            TYPE REF TO if_xco_text
        io_level_of_detail TYPE REF TO cl_xco_bal_level_of_detail OPTIONAL,

    add_message
      IMPORTING
        is_symsg           TYPE symsg
        io_level_of_detail TYPE REF TO cl_xco_bal_level_of_detail OPTIONAL,

    add_exception
      IMPORTING
        ix_exception       TYPE REF TO cx_root
        io_severity        TYPE REF TO cl_xco_message_type OPTIONAL
        io_level_of_detail TYPE REF TO cl_xco_bal_level_of_detail OPTIONAL
        io_descent         TYPE REF TO if_xco_cp_bal_exc_descent OPTIONAL
        it_additions       TYPE sxco_t_cp_bal_exc_additions OPTIONAL,

    get_lock
      RETURNING
        VALUE(ro_lock) TYPE REF TO if_xco_dp_lock.
ENDINTERFACE.