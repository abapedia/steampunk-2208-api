CLASS cl_number_range_intervals DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES nr_date TYPE sy-datum.
    TYPES nr_delete TYPE char1.
    TYPES nr_display TYPE char1.
    TYPES nr_error TYPE char1.
    TYPES: BEGIN OF nr_error_inf,
      msgnr TYPE c LENGTH 3,
      tablename TYPE c LENGTH 30,
      fieldname TYPE c LENGTH 30,
      tabix TYPE p LENGTH 4 DECIMALS 0,
      END OF nr_error_inf.
    TYPES: BEGIN OF nr_inriv,
      subobject TYPE c LENGTH 6,
      nrrangenr TYPE c LENGTH 2,
      toyear TYPE n LENGTH 4,
      fromnumber TYPE c LENGTH 20,
      tonumber TYPE c LENGTH 20,
      nrlevel TYPE n LENGTH 20,
      externind TYPE c LENGTH 1,
      procind TYPE c LENGTH 1,
      END OF nr_inriv.
    TYPES nr_error_iv TYPE STANDARD TABLE OF nr_inriv WITH DEFAULT KEY.
    TYPES: BEGIN OF nr_gaps_line,
      client TYPE c LENGTH 3,
      instanz TYPE c LENGTH 43,
      object TYPE c LENGTH 10,
      subobject TYPE c LENGTH 6,
      nrrangenr TYPE c LENGTH 2,
      toyear TYPE n LENGTH 4,
      rollflag TYPE c LENGTH 1,
      srtf TYPE i,
      datum TYPE d,
      zeit TYPE t,
      fromnr TYPE c LENGTH 20,
      tonumber TYPE c LENGTH 20,
      nrlevel TYPE n LENGTH 20,
      externind TYPE c LENGTH 1,
      g_fromnr TYPE c LENGTH 20,
      g_tonr TYPE c LENGTH 20,
      anwender TYPE c LENGTH 12,
      grund TYPE c LENGTH 40,
      buffer TYPE c LENGTH 1,
      nr_date TYPE d,
      nr_time TYPE t,
      nr_user TYPE c LENGTH 12,
      nr_date_chan TYPE d,
      nr_time_chan TYPE t,
      nr_user_chan TYPE c LENGTH 12,
      END OF nr_gaps_line.
    TYPES nr_gaps_tt TYPE STANDARD TABLE OF nr_gaps_line WITH DEFAULT KEY.
    TYPES nr_inst TYPE c LENGTH 40.
    TYPES nr_interval TYPE STANDARD TABLE OF nr_inriv WITH DEFAULT KEY.
    TYPES nr_interval_ext TYPE c LENGTH 2.
    TYPES nr_interval_int TYPE c LENGTH 2.
    TYPES nr_lokal TYPE char1.
    TYPES nr_object TYPE c LENGTH 10.
    TYPES: BEGIN OF nr_object_range_line,
      sign TYPE c LENGTH 1,
      option TYPE c LENGTH 2,
      low TYPE c LENGTH 10,
      high TYPE c LENGTH 10,
      END OF nr_object_range_line.
    TYPES nr_object_range TYPE STANDARD TABLE OF nr_object_range_line WITH DEFAULT KEY.
    TYPES nr_paral TYPE char1.
    TYPES nr_repair TYPE char1.
    TYPES nr_subobject TYPE c LENGTH 6.
    TYPES nr_test TYPE char1.
    TYPES nr_toyear TYPE n LENGTH 4.
    TYPES nr_user TYPE sy-uname.
    TYPES nr_warning TYPE char1.
    TYPES nr_wpnr TYPE i.

    METHODS create
      IMPORTING
      !object TYPE nr_object
      !interval TYPE nr_interval
      !subobject TYPE nr_subobject OPTIONAL
      EXPORTING
      !error TYPE nr_error
      !error_iv TYPE nr_error_iv
      !warning TYPE nr_warning
      !error_inf TYPE nr_error_inf
      EXCEPTIONS
      object_not_found
      no_changes_made
      invalid_indicator
      foreign_lock
      lock_error
      create_error
      lock_system_failure.
    METHODS delete
      IMPORTING
      !object TYPE nr_object
      !interval TYPE nr_interval
      !subobject TYPE nr_subobject OPTIONAL
      EXPORTING
      !error TYPE nr_error
      !error_iv TYPE nr_error_iv
      !error_inf TYPE nr_error_inf
      !warning TYPE nr_warning
      EXCEPTIONS
      invalid_indicator
      no_changes_made
      object_not_found
      object_already_locked
      delete_error
      lock_error.
    METHODS read
      IMPORTING
      !object TYPE nr_object
      !subobject TYPE nr_subobject OPTIONAL
      !nr_range_nr1 TYPE nr_interval_int OPTIONAL
      !nr_range_nr2 TYPE nr_interval_ext OPTIONAL
      EXPORTING
      !interval TYPE nr_interval
      EXCEPTIONS
      object_not_found
      nr_range_nr1_not_found
      nr_range_nr1_not_intern
      nr_range_nr2_must_be_space
      nr_range_nr2_not_extern
      nr_range_nr2_not_found
      subobject_must_be_space
      subobject_not_found
      read_error.
    METHODS update
      IMPORTING
      !object TYPE nr_object
      !interval TYPE nr_interval
      !subobject TYPE nr_subobject OPTIONAL
      EXPORTING
      !error TYPE nr_error
      !error_iv TYPE nr_error_iv
      !error_inf TYPE nr_error_inf
      !warning TYPE nr_warning
      EXCEPTIONS
      object_not_found
      no_changes_made
      invalid_indicator
      object_already_locked
      lock_error
      update_error
      lock_system_failure.
ENDCLASS.

CLASS cl_number_range_intervals IMPLEMENTATION.
ENDCLASS.