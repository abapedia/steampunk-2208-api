INTERFACE if_iam_business_user
  PUBLIC.
  TYPES ty_user_id TYPE uname.
  TYPES ty_user_name TYPE c LENGTH 40.
  TYPES ty_bupa_id TYPE c LENGTH 10.
  TYPES ty_logon_language TYPE c.
  TYPES ty_decimal_format TYPE c.
  TYPES ty_date_format TYPE c.
  TYPES ty_time_format TYPE c.
  TYPES ty_time_zone TYPE tznzone.
  TYPES ty_date TYPE dats.
  TYPES ty_lock_status TYPE i.
  TYPES ty_user_globaluid TYPE c LENGTH 36.
  TYPES tt_user_globaluid_history TYPE STANDARD TABLE OF ty_user_globaluid WITH DEFAULT KEY.
  TYPES:
    tt_user_id TYPE STANDARD TABLE OF ty_user_id WITH EMPTY KEY.

  "types TT_USER_UUID_HISTORY type FS4BPU_T_USER_UUID_HISTORY .
  METHODS lock
    EXPORTING
      !et_return TYPE bapirettab.
  METHODS unlock
    EXPORTING
      !et_return TYPE bapirettab.
  METHODS save
    EXPORTING
      !et_return TYPE bapirettab.
  METHODS delete
    EXPORTING
      !et_return TYPE bapirettab.
  METHODS set_user_name
    IMPORTING
      !iv_user_name TYPE ty_user_name
    EXPORTING
      !et_return    TYPE bapirettab.
  METHODS set_logon_language
    IMPORTING
      !iv_language TYPE ty_logon_language.
  METHODS set_decimal_format
    IMPORTING
      !iv_decimal_format TYPE ty_decimal_format.
  METHODS set_date_format
    IMPORTING
      !iv_date_format TYPE ty_date_format.
  METHODS set_time_format
    IMPORTING
      !iv_time_format TYPE ty_time_format.
  METHODS set_time_zone
    IMPORTING
      !iv_time_zone TYPE ty_time_zone.
  METHODS set_validity
    IMPORTING
      !iv_valid_from TYPE ty_date OPTIONAL
      !iv_valid_to   TYPE ty_date OPTIONAL.
  METHODS set_globaluid
    IMPORTING
      !iv_globaluid         TYPE ty_user_globaluid
      !it_globaluid_history TYPE tt_user_globaluid_history OPTIONAL.
  METHODS get_globaluid
    EXPORTING
      !ev_globaluid         TYPE ty_user_globaluid
      !et_globaluid_history TYPE tt_user_globaluid_history.
  METHODS get_user_id
    RETURNING
      VALUE(rv_user_id) TYPE ty_user_id.
  METHODS get_user_name
    RETURNING
      VALUE(rv_user_name) TYPE ty_user_name.
  METHODS get_logon_language
    RETURNING
      VALUE(rv_language) TYPE ty_logon_language.
  METHODS get_decimal_format
    RETURNING
      VALUE(rv_decimal_format) TYPE ty_decimal_format.
  METHODS get_date_format
    RETURNING
      VALUE(rv_date_format) TYPE ty_date_format.
  METHODS get_time_format
    RETURNING
      VALUE(rv_time_format) TYPE ty_time_format.
  METHODS get_time_zone
    RETURNING
      VALUE(rv_time_zone) TYPE ty_time_zone.
  METHODS get_validity
    EXPORTING
      !ev_valid_from TYPE ty_date
      !ev_valid_to   TYPE ty_date.
  METHODS get_lock_status
    EXPORTING
      !ev_locked      TYPE abap_bool
      !ev_lock_status TYPE ty_lock_status.
  METHODS add_business_roles
    IMPORTING
      !it_business_role_id TYPE if_iam_business_role=>tt_id
    EXPORTING
      !et_return           TYPE bapirettab.
  METHODS remove_business_roles
    IMPORTING
      !it_business_role_id TYPE if_iam_business_role=>tt_id
    EXPORTING
      !et_return           TYPE bapirettab.
  METHODS get_business_roles
    RETURNING
      VALUE(rt_business_role_id) TYPE if_iam_business_role=>tt_id.
ENDINTERFACE.