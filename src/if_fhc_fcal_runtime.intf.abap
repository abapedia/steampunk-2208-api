INTERFACE if_fhc_fcal_runtime

  PUBLIC.

  TYPES:
    ty_fhc_date           TYPE d,
    ty_fhc_factorydate    TYPE i,
    ty_fhc_number_of_days TYPE i,
    ty_fhc_weekday        TYPE n LENGTH 1,
    ty_fhc_description    TYPE c LENGTH 255,
    ty_fhc_fcalid         TYPE c LENGTH 32,
    BEGIN OF ENUM te_correct_option,
      gc_correct_option_plus,
      gc_correct_option_minus,
    END OF ENUM te_correct_option.

  METHODS:
    convert_date_to_factorydate
      IMPORTING
        iv_date               TYPE ty_fhc_date
        iv_correct_option     TYPE te_correct_option DEFAULT gc_correct_option_plus
      RETURNING
        VALUE(rv_factorydate) TYPE ty_fhc_factorydate
      RAISING
        cx_fhc_runtime,
    convert_factorydate_to_date
      IMPORTING
        iv_factorydate TYPE ty_fhc_factorydate
      RETURNING
        VALUE(rv_date) TYPE ty_fhc_date
      RAISING
        cx_fhc_runtime,
    get_last_factorydate
      RETURNING
        VALUE(rv_last_factory_date) TYPE ty_fhc_factorydate
      RAISING
        cx_fhc_runtime,
    calc_workingdays_between_dates
      IMPORTING
        iv_start                         TYPE ty_fhc_date
        iv_end                           TYPE ty_fhc_date
      RETURNING
        VALUE(rv_number_of_working_days) TYPE ty_fhc_number_of_days
      RAISING
        cx_fhc_runtime,
    add_workingdays_to_date
      IMPORTING
        iv_start                 TYPE ty_fhc_date
        iv_number_of_workingdays TYPE ty_fhc_number_of_days
      RETURNING
        VALUE(rv_end)            TYPE ty_fhc_date
      RAISING
        cx_fhc_runtime,
    subtract_workingdays_from_date
      IMPORTING
        iv_start                 TYPE ty_fhc_date
        iv_number_of_workingdays TYPE ty_fhc_number_of_days
      RETURNING
        VALUE(rv_end)            TYPE ty_fhc_date
      RAISING
        cx_fhc_runtime,
    get_validity_start
      RETURNING
        VALUE(rv_validity_start) TYPE ty_fhc_date,
    get_validity_end
      RETURNING
        VALUE(rv_validity_end) TYPE ty_fhc_date,
    is_workingday
      IMPORTING
        iv_weekday           TYPE ty_fhc_weekday
      RETURNING
        VALUE(rv_workingday) TYPE abap_bool,
    is_holiday_workingday
      RETURNING
        VALUE(rv_workingday) TYPE abap_bool,
    get_description
      IMPORTING
        iv_language           TYPE spras DEFAULT sy-langu
      RETURNING
        VALUE(rv_description) TYPE ty_fhc_description,
    get_hcal_assignment
      RETURNING
        VALUE(ro_holidaycalendar) TYPE REF TO if_fhc_hcal_runtime
      RAISING
        cx_fhc_runtime,
    get_id
      RETURNING
        VALUE(rv_id) TYPE ty_fhc_fcalid.

ENDINTERFACE.