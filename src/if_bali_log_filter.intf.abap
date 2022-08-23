INTERFACE if_bali_log_filter
  PUBLIC.
  TYPES ty_external_id TYPE c LENGTH 100.
  TYPES:
    ty_external_id_table TYPE STANDARD TABLE OF ty_external_id WITH EMPTY KEY.
  TYPES ty_max_log_number TYPE p LENGTH 10 DECIMALS 0.
  TYPES ty_object TYPE balobj_d.
  TYPES:
    ty_object_table TYPE STANDARD TABLE OF ty_object WITH EMPTY KEY.
  TYPES ty_subobject TYPE balsubobj.
  TYPES:
    ty_subobject_table TYPE STANDARD TABLE OF ty_subobject WITH EMPTY KEY.
  TYPES ty_timestamp TYPE utclong.
  TYPES: BEGIN OF ty_time_interval,
    date_from TYPE d,
    time_from TYPE t,
    date_to TYPE d,
    time_to TYPE t,
    END OF ty_time_interval.
  TYPES ty_user TYPE c LENGTH 12.
  TYPES:
    ty_user_table TYPE STANDARD TABLE OF ty_user WITH EMPTY KEY.
  METHODS set_descriptor
    IMPORTING
      !object TYPE ty_object OPTIONAL
      !subobject TYPE ty_subobject OPTIONAL
      !subobject_table TYPE ty_subobject_table OPTIONAL
      !external_id TYPE ty_external_id OPTIONAL
      !external_id_table TYPE ty_external_id_table OPTIONAL
    RETURNING
      VALUE(new_filter) TYPE REF TO if_bali_log_filter
    RAISING
      cx_bali_runtime.
  METHODS set_create_info
    IMPORTING
      !user TYPE ty_user OPTIONAL
      !user_table TYPE ty_user_table OPTIONAL
    RETURNING
      VALUE(new_filter) TYPE REF TO if_bali_log_filter.
  METHODS set_time_interval
    IMPORTING
      !start_time TYPE ty_timestamp
      !end_time TYPE ty_timestamp
    RETURNING
      VALUE(new_filter) TYPE REF TO if_bali_log_filter
    RAISING
      cx_bali_runtime.
  METHODS set_maximum_log_number
    IMPORTING
      !max_log_number TYPE ty_max_log_number
    RETURNING
      VALUE(new_filter) TYPE REF TO if_bali_log_filter.
  METHODS get_all_values
    EXPORTING
      !object_table TYPE ty_object_table
      !subobject_table TYPE ty_subobject_table
      !external_id_table TYPE ty_external_id_table
      !user_table TYPE ty_user_table
      !time_interval TYPE ty_time_interval
      !max_log_number TYPE ty_max_log_number.
ENDINTERFACE.