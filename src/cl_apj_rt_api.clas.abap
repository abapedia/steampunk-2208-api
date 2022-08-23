CLASS cl_apj_rt_api DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES ty_catalog_name TYPE c LENGTH 40.
    TYPES ty_jobcount TYPE c LENGTH 8.
    TYPES ty_jobname TYPE c LENGTH 32.
    TYPES ty_job_status TYPE c.
    TYPES ty_job_status_text TYPE char30.
    TYPES ty_user_error TYPE abap_bool.
    TYPES ty_bapiret2 TYPE bapiret2.
    TYPES:
      tt_bapiret2 TYPE STANDARD TABLE OF ty_bapiret2.
    TYPES:
      BEGIN OF ty_start_info,
          start_immediately TYPE boolean,
          timestamp         TYPE timestamp,
        END OF ty_start_info.
    TYPES:
      BEGIN OF ty_value_range,
           sign   TYPE c,
           option TYPE c LENGTH 2,
           low    TYPE c LENGTH 255,
           high   TYPE c LENGTH 255,
         END OF ty_value_range.
    TYPES:
      tt_value_range TYPE STANDARD TABLE OF ty_value_range WITH EMPTY KEY.
    TYPES:
      BEGIN OF ty_job_exception,
        calender_id            TYPE c LENGTH 2,
        start_restriction_code TYPE c,
      END OF ty_job_exception.
    TYPES:
      BEGIN OF ty_job_parameter_value,
           name       TYPE c LENGTH 38,
           t_value    TYPE tt_value_range,
         END OF ty_job_parameter_value.
    TYPES:
      BEGIN OF ty_weekday_info,
        on_monday    TYPE boolean,
        on_tuesday   TYPE boolean,
        on_wednesday TYPE boolean,
        on_thursday  TYPE boolean,
        on_friday    TYPE boolean,
        on_saturday  TYPE boolean,
        on_sunday    TYPE boolean,
      END OF ty_weekday_info.
    TYPES:
      BEGIN OF ty_month_info,
        day                  TYPE int2,
        use_working_days_ind TYPE boolean,
        shift_direction      TYPE n LENGTH 2,
        week_number          TYPE n LENGTH 2,
      END OF ty_month_info.
    TYPES:
      BEGIN OF ty_scheduling_info,
        test_mode            TYPE boolean,
        periodic_granularity TYPE c LENGTH 2,
        periodic_value       TYPE n LENGTH 3,
        timezone             TYPE timezone,
        exception            TYPE ty_job_exception,
        weekday_info         TYPE ty_weekday_info,
        month_info           TYPE ty_month_info,
      END OF ty_scheduling_info.
    TYPES:
      BEGIN OF ty_job_details,
        job_name  TYPE c LENGTH 32,
        job_count TYPE c LENGTH 8,
      END OF ty_job_details.
    TYPES:
      BEGIN OF ty_end_info,
          type           TYPE c LENGTH 4,
          timestamp      TYPE timestamp,
          max_iterations TYPE i,
        END OF ty_end_info.
    TYPES ty_job_text TYPE c LENGTH 120.
    TYPES ty_template_name TYPE c LENGTH 40.
    TYPES:
      tt_job_parameter_value TYPE STANDARD TABLE OF ty_job_parameter_value WITH NON-UNIQUE KEY name
            WITH NON-UNIQUE SORTED KEY name COMPONENTS name.

    CLASS-METHODS schedule_job
      IMPORTING
      !iv_job_template_name TYPE ty_template_name
      !iv_job_text TYPE ty_job_text
      !is_start_info TYPE ty_start_info
      !is_end_info TYPE ty_end_info OPTIONAL
      !is_scheduling_info TYPE ty_scheduling_info OPTIONAL
      !it_job_parameter_value TYPE tt_job_parameter_value OPTIONAL
      EXPORTING
      !ev_jobname TYPE ty_jobname
      !ev_jobcount TYPE ty_jobcount
      RAISING
      cx_apj_rt.
    CLASS-METHODS get_job_status
      IMPORTING
      !iv_jobname TYPE ty_jobname
      !iv_jobcount TYPE ty_jobcount
      EXPORTING
      !ev_job_status TYPE ty_job_status
      !ev_job_status_text TYPE ty_job_status_text
      RAISING
      cx_apj_rt.
    CLASS-METHODS cancel_job
      IMPORTING
      !iv_jobname TYPE ty_jobname
      !iv_jobcount TYPE ty_jobcount
      RAISING
      cx_apj_rt.
    CLASS-METHODS get_job_runtime_info
      EXPORTING
      !ev_catalog_name TYPE ty_catalog_name
      !ev_template_name TYPE ty_template_name
      RAISING
      cx_apj_rt.
ENDCLASS.

CLASS cl_apj_rt_api IMPLEMENTATION.
ENDCLASS.