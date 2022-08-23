CLASS cl_numberrange_intervals DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF nr_option,
           transport TYPE abap_bool,
           transport_request TYPE c LENGTH 20,
         END OF nr_option.
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
    TYPES BEGIN OF nr_nriv_line.
    TYPES subobject TYPE c LENGTH 6.
    TYPES nrrangenr TYPE c LENGTH 2.
    TYPES toyear TYPE n LENGTH 4.
    TYPES fromnumber TYPE c LENGTH 20.
    TYPES tonumber TYPE c LENGTH 20.
    TYPES nrlevel TYPE n LENGTH 20.
    TYPES externind TYPE c LENGTH 1.
    TYPES procind TYPE c LENGTH 1.

    TYPES END   OF nr_nriv_line.
    TYPES nr_error_iv TYPE STANDARD TABLE OF nr_nriv_line.
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
    TYPES:
      nr_gaps_tt TYPE STANDARD TABLE OF nr_gaps_line.
    TYPES nr_inst TYPE c LENGTH 40.
    TYPES:
      nr_interval TYPE STANDARD TABLE OF nr_nriv_line.
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
    TYPES:
      nr_object_range TYPE STANDARD TABLE OF nr_object_range_line.
    TYPES nr_paral TYPE char1.
    TYPES nr_repair TYPE char1.
    TYPES nr_subobject TYPE c LENGTH 6.
    TYPES nr_test TYPE char1.
    TYPES nr_toyear TYPE n LENGTH 4.
    TYPES nr_user TYPE sy-uname.
    TYPES nr_warning TYPE char1.
    TYPES nr_wpnr TYPE i.
    TYPES nr_flag TYPE flag.

    CLASS-METHODS create
      IMPORTING
      !interval TYPE nr_interval
      !object TYPE nr_object
      !subobject TYPE nr_subobject OPTIONAL
      !option TYPE nr_option OPTIONAL
      EXPORTING
      !error TYPE nr_error
      !error_inf TYPE nr_error_inf
      !error_iv TYPE nr_error_iv
      !warning TYPE nr_warning
      RAISING
      cx_nr_object_not_found
      cx_number_ranges.

    CLASS-METHODS delete
      IMPORTING
      !interval TYPE nr_interval
      !object TYPE nr_object
      !subobject TYPE nr_subobject OPTIONAL
      !option TYPE nr_option OPTIONAL
      EXPORTING
      !error TYPE nr_error
      !error_inf TYPE nr_error_inf
      !error_iv TYPE nr_error_iv
      !warning TYPE nr_warning
      RAISING
      cx_nr_object_not_found
      cx_number_ranges.

    CLASS-METHODS read
      IMPORTING
      !nr_range_nr1 TYPE nr_interval_int OPTIONAL
      !nr_range_nr2 TYPE nr_interval_ext OPTIONAL
      !object TYPE nr_object
      !subobject TYPE nr_subobject OPTIONAL
      EXPORTING
      !interval TYPE nr_interval
      RAISING
      cx_nr_object_not_found
      cx_nr_subobject
      cx_number_ranges.

    CLASS-METHODS update
      IMPORTING
      !interval TYPE nr_interval
      !object TYPE nr_object
      !subobject TYPE nr_subobject OPTIONAL
      !option TYPE nr_option OPTIONAL
      EXPORTING
      !error TYPE nr_error
      !error_inf TYPE nr_error_inf
      !error_iv TYPE nr_error_iv
      !warning TYPE nr_warning
      RAISING
      cx_nr_object_not_found
      cx_number_ranges.
ENDCLASS.

CLASS cl_numberrange_intervals IMPLEMENTATION.
ENDCLASS.