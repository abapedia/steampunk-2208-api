INTERFACE if_xco_cp_bal_log_filter_fctry PUBLIC.
  METHODS:
    object
      IMPORTING
        io_constraint    TYPE REF TO cl_xco_asql_constraint
      RETURNING
        VALUE(ro_filter) TYPE REF TO if_xco_bal_log_filter,

    subobject
      IMPORTING
        io_constraint    TYPE REF TO cl_xco_asql_constraint
      RETURNING
        VALUE(ro_filter) TYPE REF TO if_xco_bal_log_filter,

    external_id
      IMPORTING
        io_constraint    TYPE REF TO cl_xco_asql_constraint
      RETURNING
        VALUE(ro_filter) TYPE REF TO if_xco_bal_log_filter,

    time_restriction
      IMPORTING
        io_interval      TYPE REF TO if_xco_cp_tm_moment_interval
      RETURNING
        VALUE(ro_filter) TYPE REF TO if_xco_bal_log_filter,

    user
      IMPORTING
        io_constraint    TYPE REF TO cl_xco_asql_constraint
      RETURNING
        VALUE(ro_filter) TYPE REF TO if_xco_bal_log_filter.
ENDINTERFACE.