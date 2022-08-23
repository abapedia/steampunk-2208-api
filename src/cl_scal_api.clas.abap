CLASS cl_scal_api DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES scalv_correct_option TYPE c.
    TYPES scalv_duration TYPE f.
    TYPES scalv_fatcory_date TYPE p LENGTH 5 DECIMALS 0.
    TYPES scalv_time TYPE sy-uzeit.
    TYPES scalv_unit TYPE msehi.
    TYPES scalv_weekday_name TYPE c LENGTH 15.
    TYPES scalv_weekday_number TYPE c.
    TYPES scalv_workday_indicator TYPE c.
    TYPES: BEGIN OF scals_day_attribs,
      date TYPE d,
      freeday TYPE c LENGTH 1,
      holiday TYPE c LENGTH 1,
      holiday_id TYPE c LENGTH 3,
      txt_short TYPE c LENGTH 10,
      txt_long TYPE c LENGTH 30,
      weekday TYPE c LENGTH 1,
      weekday_s TYPE c LENGTH 2,
      weekday_l TYPE c LENGTH 20,
      day_string TYPE c LENGTH 60,
      END OF scals_day_attribs.
    TYPES:
      scalt_day_attribs TYPE TABLE OF scals_day_attribs.
    TYPES scalv_date TYPE sy-datum.
    TYPES scalv_holiday_cal_id TYPE c LENGTH 2.
    TYPES:
      BEGIN OF scals_holiday_calendar,
      ident TYPE c LENGTH 2,
      spras TYPE spras,
      ltext TYPE c LENGTH 60,
      END OF scals_holiday_calendar.
    TYPES:
      scalt_holiday_calendars TYPE TABLE OF scals_holiday_calendar.
    TYPES: BEGIN OF scals_factory_cal_attrib,
      ident TYPE c LENGTH 2,
      vjahr TYPE n LENGTH 4,
      bjahr TYPE n LENGTH 4,
      motag TYPE c LENGTH 1,
      ditag TYPE c LENGTH 1,
      miwch TYPE c LENGTH 1,
      dotag TYPE c LENGTH 1,
      frtag TYPE c LENGTH 1,
      satag TYPE c LENGTH 1,
      sotag TYPE c LENGTH 1,
      fetag TYPE c LENGTH 1,
      hocid TYPE c LENGTH 2,
      basis TYPE n LENGTH 5,
      abbr TYPE c LENGTH 1,
      crusr TYPE c LENGTH 12,
      crdat TYPE d,
      crtime TYPE t,
      interv TYPE c LENGTH 1,
      aktvjahr TYPE n LENGTH 4,
      aktbjahr TYPE n LENGTH 4,
      langu TYPE c LENGTH 1,
      txt_long TYPE c LENGTH 40,
      END OF scals_factory_cal_attrib.
    TYPES:
      BEGIN OF scals_factory_calendar,
      ident TYPE c LENGTH 2,
      spras TYPE spras,
      ltext TYPE c LENGTH 60,
      END OF scals_factory_calendar.
    TYPES:
      scalt_factory_calendars TYPE TABLE OF scals_factory_calendar.
    TYPES scalv_factory_cal_id TYPE c LENGTH 2.
    TYPES scalv_returncode TYPE sy-subrc.

    CLASS-METHODS day_attributes_get
      IMPORTING
      !iv_factory_calendar TYPE scalv_factory_cal_id
      !iv_holiday_calendar TYPE scalv_holiday_cal_id
      !iv_date_from TYPE scalv_date
      !iv_date_to TYPE scalv_date
      !iv_language TYPE spras DEFAULT sy-langu
      EXPORTING
      !ev_returncode TYPE scalv_returncode
      !et_day_attributes TYPE scalt_day_attribs
      RAISING
      cx_scal.
    CLASS-METHODS date_compute_day
      IMPORTING
      !iv_date TYPE scalv_date
      EXPORTING
      !ev_weekday_number TYPE scalv_weekday_number
      !ev_weekday_name TYPE scalv_weekday_name.
    CLASS-METHODS factory_calendar_get
      IMPORTING
      !iv_language TYPE spras DEFAULT sy-langu
      EXPORTING
      !ev_returncode TYPE scalv_returncode
      !et_factory_calendars TYPE scalt_factory_calendars
      RAISING
      cx_scal.
    CLASS-METHODS holiday_calendar_get
      IMPORTING
      !iv_language TYPE spras DEFAULT sy-langu
      EXPORTING
      !ev_returncode TYPE scalv_returncode
      !et_holiday_calendars TYPE scalt_holiday_calendars
      RAISING
      cx_scal.
    CLASS-METHODS date_convert_to_factorydate
      IMPORTING
      !iv_correct_option TYPE scalv_correct_option DEFAULT '+'
      !iv_date TYPE scalv_date
      !iv_factory_calendar TYPE scalv_factory_cal_id
      EXPORTING
      !ev_date TYPE scalv_date
      !ev_factory_date TYPE scalv_fatcory_date
      !ev_workday_indicator TYPE scalv_workday_indicator
      RAISING
      cx_scal.
    CLASS-METHODS factorydate_convert_to_date
      IMPORTING
      !iv_factory_date TYPE scalv_fatcory_date
      !iv_factory_calendar TYPE scalv_factory_cal_id
      EXPORTING
      !ev_date TYPE scalv_date
      RAISING
      cx_scal.
    CLASS-METHODS factory_calendar_attribute_get
      IMPORTING
      !iv_factory_calendar TYPE scalv_factory_cal_id
      !iv_language TYPE spras DEFAULT sy-langu
      RETURNING
      VALUE(rs_factory_calendar_attrib) TYPE scals_factory_cal_attrib
      RAISING
      cx_scal.
    CLASS-METHODS end_time_determine
      IMPORTING
      !iv_duration TYPE scalv_duration
      !iv_unit TYPE scalv_unit OPTIONAL
      !iv_factory_calendar TYPE scalv_factory_cal_id OPTIONAL
      EXPORTING
      !ev_end_date TYPE scalv_date
      !ev_end_time TYPE scalv_time
      CHANGING
      !cv_start_date TYPE scalv_date DEFAULT sy-datum
      !cv_start_time TYPE scalv_time DEFAULT sy-uzeit
      RAISING
      cx_scal.

    CLASS-METHODS start_time_determine
      IMPORTING
      !iv_duration TYPE scalv_duration
      !iv_unit TYPE scalv_unit OPTIONAL
      !iv_factory_calendar TYPE scalv_factory_cal_id OPTIONAL
      EXPORTING
      !ev_start_date TYPE scalv_date
      !ev_start_time TYPE scalv_time
      CHANGING
      !cv_end_date TYPE scalv_date DEFAULT sy-datum
      !cv_end_time TYPE scalv_time DEFAULT sy-uzeit
      RAISING
      cx_scal.
ENDCLASS.

CLASS cl_scal_api IMPLEMENTATION.
ENDCLASS.