CLASS cl_scal_utils DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES scalv_returncode TYPE sy-subrc.
    TYPES scalv_date TYPE sy-datum.
    TYPES scalv_year_week TYPE c LENGTH 6.
    TYPES:
      scalv_year TYPE n LENGTH 4.
    TYPES:
      scalv_week TYPE n LENGTH 2.
    TYPES:
      BEGIN OF scals_month_name,
      spras TYPE spras,
      mnr TYPE n LENGTH 2,
      ktx TYPE c LENGTH 3,
      ltx TYPE c LENGTH 10,
      END OF scals_month_name.
    TYPES:
      scalt_month_names TYPE TABLE OF scals_month_name.

    CLASS-METHODS month_names_get
      IMPORTING
      !iv_language TYPE spras DEFAULT sy-langu
      EXPORTING
      !et_month_names TYPE scalt_month_names
      !ev_returncode TYPE scalv_returncode
      RAISING
      cx_scal.
    CLASS-METHODS week_get_first_day
      IMPORTING
      !iv_year_week TYPE scalv_year_week
      !iv_year TYPE scalv_year
      !iv_week TYPE scalv_week
      EXPORTING
      !ev_date TYPE scalv_date
      RAISING
      cx_scal.
    CLASS-METHODS date_get_week
      IMPORTING
      !iv_date TYPE scalv_date
      EXPORTING
      !ev_year_week TYPE scalv_year_week
      !ev_year TYPE scalv_year
      !ev_week TYPE scalv_week
      RAISING
      cx_scal.
ENDCLASS.

CLASS cl_scal_utils IMPLEMENTATION.
ENDCLASS.