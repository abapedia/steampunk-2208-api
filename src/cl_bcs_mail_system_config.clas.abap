CLASS cl_bcs_mail_system_config DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
      ty_days                   TYPE i,
      ty_default_sender_address TYPE c LENGTH 120,
      ty_default_sender_name    TYPE c LENGTH 100,
      ty_recipient_domain       TYPE c LENGTH 117,
      ty_sender_domain          TYPE c LENGTH 117,
      tyt_recipient_domains     TYPE STANDARD TABLE OF ty_recipient_domain WITH EMPTY KEY,
      tyt_sender_domains        TYPE STANDARD TABLE OF ty_sender_domain WITH EMPTY KEY.
    CLASS-METHODS create_instance
      RETURNING
        VALUE(result) TYPE REF TO cl_bcs_mail_system_config.
    METHODS set_address_check_active
      IMPORTING
        iv_address_check_active TYPE abap_bool
      RAISING
        cx_bcs_mail_config.
    METHODS get_address_check_active
      RETURNING
        VALUE(address_check_active) TYPE abap_bool.
    METHODS add_allowed_recipient_domains
      IMPORTING
        it_allowed_rec_domains TYPE tyt_recipient_domains
      RAISING
        cx_bcs_mail_config.
    METHODS add_allowed_sender_domains
      IMPORTING
        it_allowed_sender_domains TYPE tyt_sender_domains
      RAISING
        cx_bcs_mail_config.
    METHODS modify_default_sender_address
      IMPORTING
        iv_default_address TYPE ty_default_sender_address
        iv_default_name    TYPE ty_default_sender_name
      RAISING
        cx_bcs_mail_config.
    METHODS read_allowed_recipient_domains
      RETURNING
        VALUE(allowed_recipient_domains) TYPE tyt_recipient_domains.
    METHODS read_allowed_sender_domains
      RETURNING
        VALUE(allowed_sender_domains) TYPE tyt_sender_domains.
    METHODS read_default_sender_address
      EXPORTING
        ev_default_sender_address TYPE ty_default_sender_address
        ev_default_sender_name    TYPE ty_default_sender_name.
    METHODS delete_allowed_rec_domains
      IMPORTING
        it_deletable_rec_domains TYPE tyt_recipient_domains
      RAISING
        cx_bcs_mail_config.
    METHODS delete_allowed_sender_domains
      IMPORTING
        it_deletable_sender_domains TYPE tyt_sender_domains
      RAISING
        cx_bcs_mail_config.
    METHODS delete_default_sender_addr
      IMPORTING
        iv_default_sender_address TYPE ty_default_sender_address
      RAISING
        cx_bcs_mail_config.
    METHODS set_days_until_mail_expires
      IMPORTING
        iv_number_of_days TYPE ty_days
      RAISING
        cx_bcs_mail_config.
    METHODS get_days_until_mail_expires
      RETURNING
        VALUE(number_of_days) TYPE ty_days
      RAISING
        cx_bcs_mail_config.
    METHODS delete_days_until_mail_expires
      RAISING
        cx_bcs_mail_config.

ENDCLASS.

CLASS cl_bcs_mail_system_config IMPLEMENTATION.
ENDCLASS.