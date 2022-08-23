INTERFACE if_fhc_id_mapper
  PUBLIC.

  TYPES:
    ty_wfcid      TYPE c LENGTH 2,
    ty_fhc_fcalid TYPE c LENGTH 32,
    ty_hident     TYPE c LENGTH 2,
    ty_fhc_hcalid TYPE c LENGTH 32,
    ty_ftgid      TYPE c LENGTH 3,
    ty_fhc_holid  TYPE c LENGTH 32.

  METHODS:
    mapping_fcal_legacyid_to_id
      IMPORTING iv_legacy_id     TYPE ty_wfcid
      RETURNING
                VALUE(rv_factorycalendar_id) TYPE ty_fhc_fcalid
      RAISING
                cx_fhc_runtime,
    mapping_hcal_legacyid_to_id
      IMPORTING iv_legacy_id     TYPE ty_hident
      RETURNING
                VALUE(rv_holidaycalendar_id) TYPE ty_fhc_hcalid
      RAISING
                cx_fhc_runtime,
    mapping_hol_legacyid_to_id
      IMPORTING iv_legacy_id    TYPE ty_ftgid
      RETURNING
                VALUE(rv_holiday_id) TYPE ty_fhc_holid
      RAISING
                cx_fhc_runtime,
    mapping_fcal_id_to_legacyid
      IMPORTING iv_factorycalendar_id           TYPE ty_fhc_fcalid
      RETURNING
                VALUE(rv_legacy_id) TYPE ty_wfcid
      RAISING
                cx_fhc_runtime,
    mapping_hcal_id_to_legacyid
      IMPORTING iv_holidaycalendar_id           TYPE ty_fhc_hcalid
      RETURNING
                VALUE(rv_legacy_id) TYPE ty_hident
      RAISING
                cx_fhc_runtime,
    mapping_hol_id_to_legacyid
      IMPORTING iv_holiday_id            TYPE ty_fhc_holid
      RETURNING
                VALUE(rv_legacy_id) TYPE ty_ftgid
      RAISING
                cx_fhc_runtime.

ENDINTERFACE.