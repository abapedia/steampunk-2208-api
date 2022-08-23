INTERFACE if_xco_cp_tm_moment PUBLIC.
  DATA:
    date TYPE REF TO if_xco_cp_tm_date READ-ONLY,
    time TYPE REF TO if_xco_cp_tm_time READ-ONLY.

  METHODS:
    as
      IMPORTING
        io_format        TYPE REF TO if_xco_cp_tm_moment_format
      RETURNING
        VALUE(ro_string) TYPE REF TO if_xco_string,
    get_unix_timestamp
      IMPORTING
        io_time_zone             TYPE REF TO if_xco_tm_time_zone DEFAULT xco_cp_time=>time_zone->utc
      RETURNING
        VALUE(ro_unix_timestamp) TYPE REF TO if_xco_cp_tm_unix_timestamp,
    add
      IMPORTING
        iv_year          TYPE i DEFAULT 0
        iv_month         TYPE i DEFAULT 0
        iv_day           TYPE i DEFAULT 0
        iv_hour          TYPE i DEFAULT 0
        iv_minute        TYPE i DEFAULT 0
        iv_second        TYPE i DEFAULT 0
      RETURNING
        VALUE(ro_moment) TYPE REF TO if_xco_cp_tm_moment,

    subtract
      IMPORTING
        iv_year          TYPE i DEFAULT 0
        iv_month         TYPE i DEFAULT 0
        iv_day           TYPE i DEFAULT 0
        iv_hour          TYPE i DEFAULT 0
        iv_minute        TYPE i DEFAULT 0
        iv_second        TYPE i DEFAULT 0
      RETURNING
        VALUE(ro_moment) TYPE REF TO if_xco_cp_tm_moment,

    overwrite
      IMPORTING
        iv_year          TYPE if_xco_cp_tm_date=>tv_year OPTIONAL
        iv_month         TYPE if_xco_cp_tm_date=>tv_month OPTIONAL
        iv_day           TYPE if_xco_cp_tm_date=>tv_day OPTIONAL
        iv_hour          TYPE if_xco_cp_tm_time=>tv_hour OPTIONAL
        iv_minute        TYPE if_xco_cp_tm_time=>tv_minute OPTIONAL
        iv_second        TYPE if_xco_cp_tm_time=>tv_second OPTIONAL
      RETURNING
        VALUE(ro_moment) TYPE REF TO if_xco_cp_tm_moment,

    is_before
      IMPORTING
        io_moment           TYPE REF TO if_xco_cp_tm_moment
      RETURNING
        VALUE(rv_is_before) TYPE abap_bool,

    is_not_before
      IMPORTING
        io_moment               TYPE REF TO if_xco_cp_tm_moment
      RETURNING
        VALUE(rv_is_not_before) TYPE abap_bool,

    is_after
      IMPORTING
        io_moment          TYPE REF TO if_xco_cp_tm_moment
      RETURNING
        VALUE(rv_is_after) TYPE abap_bool,

    is_not_after
      IMPORTING
        io_moment              TYPE REF TO if_xco_cp_tm_moment
      RETURNING
        VALUE(rv_is_not_after) TYPE abap_bool,

    interval_to
      IMPORTING
        io_moment             TYPE REF TO if_xco_cp_tm_moment OPTIONAL
      RETURNING
        VALUE(ro_interval_to) TYPE REF TO if_xco_cp_tm_moment_interval,

    interval_from
      IMPORTING
        io_moment               TYPE REF TO if_xco_cp_tm_moment OPTIONAL
      RETURNING
        VALUE(ro_interval_from) TYPE REF TO if_xco_cp_tm_moment_interval.
ENDINTERFACE.