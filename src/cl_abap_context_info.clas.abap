CLASS cl_abap_context_info DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    TYPES:
      ty_language_key      TYPE c,
      ty_language_iso_code TYPE laiso,
      ty_system_date       TYPE d,
      ty_system_time       TYPE t,
      ty_time_zone         TYPE c LENGTH 6,
      ty_user_alias        TYPE c LENGTH 40,
      ty_user_name         TYPE c LENGTH 12.

    CLASS-METHODS:
      get_user_language_abap_format
        IMPORTING
          iv_buser           TYPE ty_user_name OPTIONAL
        RETURNING
          VALUE(rv_language) TYPE ty_language_key
        RAISING
          cx_abap_context_info_error,
      get_user_language_iso_format
        IMPORTING
          iv_buser           TYPE ty_user_name OPTIONAL
        RETURNING
          VALUE(rv_language) TYPE ty_language_iso_code
        RAISING
          cx_abap_context_info_error,
      get_user_time_zone
        IMPORTING
          iv_buser           TYPE ty_user_name OPTIONAL
        RETURNING
          VALUE(rv_timezone) TYPE ty_time_zone
        RAISING
          cx_abap_context_info_error,
      get_user_technical_name
        RETURNING
          VALUE(rv_technical_name) TYPE string,
      get_user_business_partner_id
        IMPORTING
          iv_buser                      TYPE ty_user_name OPTIONAL
        RETURNING
          VALUE(rv_business_partner_id) TYPE string
        RAISING
          cx_abap_context_info_error,
      get_user_formatted_name
        IMPORTING
          iv_buser                 TYPE ty_user_name OPTIONAL
        RETURNING
          VALUE(rv_formatted_name) TYPE string
        RAISING
          cx_abap_context_info_error,
      get_user_description
        IMPORTING
          iv_buser                   TYPE ty_user_name OPTIONAL
        RETURNING
          VALUE(rv_user_description) TYPE string
        RAISING
          cx_abap_context_info_error,
      get_user_alias
        RETURNING
          VALUE(rv_alias) TYPE ty_user_alias,
      get_system_date
        RETURNING
          VALUE(rv_date) TYPE ty_system_date,
      get_system_time
        RETURNING
          VALUE(rv_time) TYPE ty_system_time,
      get_system_url
        RETURNING
          VALUE(rv_system_url) TYPE string
        RAISING
          cx_abap_context_info_error.

ENDCLASS.

CLASS cl_abap_context_info IMPLEMENTATION.
ENDCLASS.