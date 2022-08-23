INTERFACE if_xco_cp_tm_time PUBLIC.
  TYPES:
    tv_hour   TYPE numc2,
    tv_minute TYPE numc2,
    tv_second TYPE numc2.

  DATA:
    hour   TYPE tv_hour READ-ONLY,
    minute TYPE tv_minute READ-ONLY,
    second TYPE tv_second READ-ONLY.

  METHODS:
    as
      IMPORTING
        io_format        TYPE REF TO if_xco_cp_tm_time_format
      RETURNING
        VALUE(ro_string) TYPE REF TO if_xco_string,

    add
      IMPORTING
        iv_hour        TYPE i DEFAULT 0
        iv_minute      TYPE i DEFAULT 0
        iv_second      TYPE i DEFAULT 0
      RETURNING
        VALUE(ro_time) TYPE REF TO if_xco_cp_tm_time,

    subtract
      IMPORTING
        iv_hour        TYPE i DEFAULT 0
        iv_minute      TYPE i DEFAULT 0
        iv_second      TYPE i DEFAULT 0
      RETURNING
        VALUE(ro_time) TYPE REF TO if_xco_cp_tm_time,

    overwrite
      IMPORTING
        iv_hour        TYPE tv_hour OPTIONAL
        iv_minute      TYPE tv_minute OPTIONAL
        iv_second      TYPE tv_second OPTIONAL
      RETURNING
        VALUE(ro_time) TYPE REF TO if_xco_cp_tm_time,

    get_moment
      IMPORTING
        iv_year          TYPE if_xco_cp_tm_date=>tv_year
        iv_month         TYPE if_xco_cp_tm_date=>tv_month
        iv_day           TYPE if_xco_cp_tm_date=>tv_day
      RETURNING
        VALUE(ro_moment) TYPE REF TO if_xco_cp_tm_moment.
ENDINTERFACE.