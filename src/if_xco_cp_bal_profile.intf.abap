INTERFACE if_xco_cp_bal_profile PUBLIC.
  TYPES:
    BEGIN OF ts_message_flavor,
      level_of_detail TYPE REF TO cl_xco_bal_level_of_detail,
    END OF ts_message_flavor,

    BEGIN OF ts_exception_flavor,
      level_of_detail TYPE REF TO cl_xco_bal_level_of_detail,
      severity        TYPE REF TO cl_xco_message_type,
    END OF ts_exception_flavor,

    BEGIN OF ts_exception_dispatch,
      descent   TYPE REF TO if_xco_cp_bal_exc_descent,
      additions TYPE sxco_t_cp_bal_exc_additions,
    END OF ts_exception_dispatch.

  METHODS:
    get_default_message_flavor
      RETURNING
        VALUE(rs_default_message_flavor) TYPE ts_message_flavor,

    get_default_exception_flavor
      RETURNING
        VALUE(rs_default_exception_flavor) TYPE ts_exception_flavor,

    get_default_exception_dispatch
      RETURNING
        VALUE(rs_default_exception_dispatch) TYPE ts_exception_dispatch.
ENDINTERFACE.