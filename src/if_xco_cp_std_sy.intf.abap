INTERFACE if_xco_cp_std_sy PUBLIC.
  INTERFACES:
    if_xco_news.

  METHODS:
    message
      RETURNING
        VALUE(ro_message) TYPE REF TO if_xco_message,

    date
      IMPORTING
        io_time_zone   TYPE REF TO if_xco_tm_time_zone DEFAULT xco_cp_time=>time_zone->user
      RETURNING
        VALUE(ro_date) TYPE REF TO if_xco_cp_tm_date,

    time
      IMPORTING
        io_time_zone   TYPE REF TO if_xco_tm_time_zone DEFAULT xco_cp_time=>time_zone->user
      RETURNING
        VALUE(ro_time) TYPE REF TO if_xco_cp_tm_time,

    moment
      IMPORTING
        io_time_zone     TYPE REF TO if_xco_tm_time_zone DEFAULT xco_cp_time=>time_zone->user
      RETURNING
        VALUE(ro_moment) TYPE REF TO if_xco_cp_tm_moment,

    unix_timestamp
      RETURNING
        VALUE(ro_unix_timestamp) TYPE REF TO if_xco_cp_tm_unix_timestamp,

    user
      RETURNING
        VALUE(ro_user) TYPE REF TO if_xco_cp_user.
ENDINTERFACE.