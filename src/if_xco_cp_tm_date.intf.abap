INTERFACE if_xco_cp_tm_date PUBLIC.
  TYPES:
    tv_year  TYPE numc4,
    tv_month TYPE numc2,
    tv_day   TYPE numc2.

  DATA:
    year  TYPE tv_year READ-ONLY,
    month TYPE tv_month READ-ONLY,
    day   TYPE tv_day READ-ONLY.

  METHODS:
    as
      IMPORTING
        io_format        TYPE REF TO if_xco_cp_tm_date_format
      RETURNING
        VALUE(ro_string) TYPE REF TO if_xco_string,

    add
      IMPORTING
        iv_year        TYPE i DEFAULT 0
        iv_month       TYPE i DEFAULT 0
        iv_day         TYPE i DEFAULT 0
      RETURNING
        VALUE(ro_date) TYPE REF TO if_xco_cp_tm_date,

    subtract
      IMPORTING
        iv_year        TYPE i DEFAULT 0
        iv_month       TYPE i DEFAULT 0
        iv_day         TYPE i DEFAULT 0
      RETURNING
        VALUE(ro_date) TYPE REF TO if_xco_cp_tm_date,

    overwrite
      IMPORTING
        iv_year        TYPE tv_year OPTIONAL
        iv_month       TYPE tv_month OPTIONAL
        iv_day         TYPE tv_day OPTIONAL
      RETURNING
        VALUE(ro_date) TYPE REF TO if_xco_cp_tm_date,

    get_moment
      IMPORTING
        iv_hour          TYPE if_xco_cp_tm_time=>tv_hour
        iv_minute        TYPE if_xco_cp_tm_time=>tv_minute
        iv_second        TYPE if_xco_cp_tm_time=>tv_second
      RETURNING
        VALUE(ro_moment) TYPE REF TO if_xco_cp_tm_moment.
ENDINTERFACE.