CLASS xco_cp_time DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      format    TYPE REF TO if_xco_cp_tm_format_factory READ-ONLY,

      time_zone TYPE REF TO if_xco_cp_tm_time_zone_factory READ-ONLY.

    CLASS-METHODS:

      date
        IMPORTING
          iv_year        TYPE if_xco_cp_tm_date=>tv_year
          iv_month       TYPE if_xco_cp_tm_date=>tv_month
          iv_day         TYPE if_xco_cp_tm_date=>tv_day
        RETURNING
          VALUE(ro_date) TYPE REF TO if_xco_cp_tm_date,

      time
        IMPORTING
          iv_hour        TYPE if_xco_cp_tm_time=>tv_hour
          iv_minute      TYPE if_xco_cp_tm_time=>tv_minute
          iv_second      TYPE if_xco_cp_tm_time=>tv_second
        RETURNING
          VALUE(ro_time) TYPE REF TO if_xco_cp_tm_time,

      moment
        IMPORTING
          iv_year          TYPE if_xco_cp_tm_date=>tv_year
          iv_month         TYPE if_xco_cp_tm_date=>tv_month
          iv_day           TYPE if_xco_cp_tm_date=>tv_day
          iv_hour          TYPE if_xco_cp_tm_time=>tv_hour
          iv_minute        TYPE if_xco_cp_tm_time=>tv_minute
          iv_second        TYPE if_xco_cp_tm_time=>tv_second
        RETURNING
          VALUE(ro_moment) TYPE REF TO if_xco_cp_tm_moment,

      unix_timestamp
        IMPORTING
          iv_unix_timestamp        TYPE int8
        RETURNING
          VALUE(ro_unix_timestamp) TYPE REF TO if_xco_cp_tm_unix_timestamp.
ENDCLASS.

CLASS xco_cp_time IMPLEMENTATION.
ENDCLASS.