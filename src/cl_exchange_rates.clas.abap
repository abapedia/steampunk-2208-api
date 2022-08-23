CLASS cl_exchange_rates DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    TYPES ty_is_fix_rate_change_allowed TYPE c LENGTH 1.
    TYPES ty_allowed_deviation TYPE n LENGTH 3.
    TYPES ty_is_update_allowed TYPE c LENGTH 1.
    TYPES ty_logical_system TYPE c LENGTH 10.
    TYPES ty_message TYPE bapiret2.
    TYPES BEGIN OF ty_exchange_rate.
    TYPES rate_type TYPE c LENGTH 4.
    TYPES from_curr TYPE c LENGTH 5.
    TYPES to_currncy TYPE c LENGTH 5.
    TYPES valid_from TYPE d.
    TYPES exch_rate TYPE p LENGTH 9 DECIMALS 0.
    TYPES from_factor TYPE p LENGTH 9 DECIMALS 0.
    TYPES to_factor TYPE p LENGTH 9 DECIMALS 0.
    TYPES exch_rate_v TYPE p LENGTH 9 DECIMALS 0.
    TYPES from_factor_v TYPE p LENGTH 9 DECIMALS 0.
    TYPES to_factor_v TYPE p LENGTH 9 DECIMALS 0.

    TYPES END OF ty_exchange_rate.
    TYPES ty_exchange_rates TYPE STANDARD TABLE OF ty_exchange_rate WITH EMPTY KEY.
    TYPES BEGIN OF ty_convert_curr.
    TYPES mandt TYPE c LENGTH 3.
    TYPES kurst TYPE c LENGTH 4.
    TYPES fcurr TYPE c LENGTH 5.
    TYPES tcurr TYPE c LENGTH 5.
    TYPES gdatu TYPE c LENGTH 8.
    TYPES ukurs TYPE p LENGTH 9 DECIMALS 0.
    TYPES ffact TYPE p LENGTH 9 DECIMALS 0.
    TYPES tfact TYPE p LENGTH 9 DECIMALS 0.

    TYPES END OF ty_convert_curr.
    TYPES ty_messages TYPE STANDARD TABLE OF ty_message WITH EMPTY KEY.
    CLASS-METHODS put
      IMPORTING
        !exchange_rates               TYPE ty_exchange_rates
        !is_update_allowed            TYPE ty_is_update_allowed DEFAULT abap_false
        !is_fixed_rate_change_allowed TYPE ty_is_fix_rate_change_allowed DEFAULT abap_false
        !allowed_deviation            TYPE ty_allowed_deviation DEFAULT '000'
        !do_commit                    TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(result)                 TYPE ty_messages.
    CLASS-METHODS put_replica
      IMPORTING
        !logical_system               TYPE ty_logical_system
        !is_update_allowed            TYPE ty_is_update_allowed DEFAULT abap_false
        !is_fixed_rate_change_allowed TYPE ty_is_fix_rate_change_allowed DEFAULT abap_false
        !allowed_deviation            TYPE ty_allowed_deviation DEFAULT '000'
        !do_commit                    TYPE abap_bool DEFAULT abap_true
      CHANGING
        !exchange_rates               TYPE ty_exchange_rates
      RETURNING
        VALUE(result)                 TYPE ty_messages.
    CLASS-METHODS convert_to_foreign_currency
      IMPORTING
        !date              TYPE sydate
        !foreign_currency  TYPE ty_convert_curr-fcurr
        !local_amount      TYPE any
        !local_currency    TYPE ty_convert_curr-tcurr
        !rate              TYPE ty_convert_curr-ukurs DEFAULT 0
        !rate_type         TYPE ty_convert_curr-kurst DEFAULT 'M'
        !do_read_tcurr     TYPE abap_bool DEFAULT abap_true
      EXPORTING
        !exchange_rate     TYPE ty_convert_curr-ukurs
        !foreign_amount    TYPE any
        !foreign_factor    TYPE ty_convert_curr-ffact
        !local_factor      TYPE ty_convert_curr-tfact
        !derived_rate_type TYPE ty_convert_curr-kurst
        !fixed_rate        TYPE ty_convert_curr-ukurs
      RAISING
        cx_exchange_rates.
    CLASS-METHODS convert_to_local_currency
      IMPORTING
        !date              TYPE sydate
        !foreign_amount    TYPE any
        !foreign_currency  TYPE ty_convert_curr-fcurr
        !local_currency    TYPE ty_convert_curr-tcurr
        !rate              TYPE ty_convert_curr-ukurs DEFAULT 0
        !rate_type         TYPE ty_convert_curr-kurst DEFAULT 'M'
        !do_read_tcurr     TYPE abap_bool DEFAULT abap_true
      EXPORTING
        !exchange_rate     TYPE ty_convert_curr-ukurs
        !foreign_factor    TYPE ty_convert_curr-ffact
        !local_amount      TYPE any
        !local_factor      TYPE ty_convert_curr-tfact
        !fixed_rate        TYPE ty_convert_curr-ukurs
        !derived_rate_type TYPE ty_convert_curr-kurst
      RAISING
        cx_exchange_rates.
ENDCLASS.

CLASS cl_exchange_rates IMPLEMENTATION.
ENDCLASS.