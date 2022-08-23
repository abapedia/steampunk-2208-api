CLASS cl_fhc_calendar_runtime DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
      ty_fcal_id TYPE c LENGTH 32,
      ty_hcal_id TYPE c LENGTH 32,
      ty_hol_id  TYPE c LENGTH 32.

    CLASS-METHODS:
      create_factorycalendar_runtime
        IMPORTING
          iv_factorycalendar_id  TYPE ty_fcal_id
        RETURNING
          VALUE(ro_fcal_runtime) TYPE REF TO if_fhc_fcal_runtime
        RAISING
          cx_fhc_runtime,
      create_holidaycalendar_runtime
        IMPORTING
          iv_holidaycalendar_id  TYPE ty_hcal_id
        RETURNING
          VALUE(ro_hcal_runtime) TYPE REF TO if_fhc_hcal_runtime
        RAISING
          cx_fhc_runtime,
      create_holiday_runtime
        IMPORTING
          iv_holiday_id             TYPE ty_hol_id
        RETURNING
          VALUE(ro_holiday_runtime) TYPE REF TO if_fhc_holiday_runtime
        RAISING
          cx_fhc_runtime.

ENDCLASS.

CLASS cl_fhc_calendar_runtime IMPLEMENTATION.
ENDCLASS.