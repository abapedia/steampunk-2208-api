INTERFACE if_xco_cp_tm_unix_timestamp PUBLIC.
  DATA:
    value TYPE int8 READ-ONLY.

  METHODS:
    get_moment
      IMPORTING
        io_time_zone     TYPE REF TO if_xco_tm_time_zone DEFAULT xco_cp_time=>time_zone->utc
      RETURNING
        VALUE(ro_moment) TYPE REF TO if_xco_cp_tm_moment,
    add
      IMPORTING
        iv_seconds               TYPE i
      RETURNING
        VALUE(ro_unix_timestamp) TYPE REF TO if_xco_cp_tm_unix_timestamp,

    " Subtract the given amount of seconds and return a new UNIX timestamp. Has the
    " same effect as calling add with - iv_seconds.
    subtract
      IMPORTING
        iv_seconds               TYPE i
      RETURNING
        VALUE(ro_unix_timestamp) TYPE REF TO if_xco_cp_tm_unix_timestamp.
ENDINTERFACE.