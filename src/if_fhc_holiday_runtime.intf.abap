INTERFACE if_fhc_holiday_runtime
  PUBLIC.
  TYPES:
    ty_fhc_holid      TYPE c LENGTH 32,
    ty_fhc_holtype    TYPE c,
    ty_fhc_class      TYPE c,
    ty_fhc_confession TYPE c LENGTH 2,
    ty_fhc_holtext_s  TYPE not_released.

  METHODS:
    get_holiday_id
      RETURNING
        VALUE(rv_id) TYPE ty_fhc_holid,
    get_type
      RETURNING
        VALUE(rv_type) TYPE ty_fhc_holtype,
    get_class
      RETURNING
        VALUE(rv_class) TYPE ty_fhc_class,
    get_confession
      RETURNING
        VALUE(rv_confession) TYPE ty_fhc_confession,
    get_text
      IMPORTING
        iv_language    TYPE spras DEFAULT sy-langu
      RETURNING
        VALUE(rs_text) TYPE ty_fhc_holtext_s.

ENDINTERFACE.