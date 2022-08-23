CLASS cl_number_range_runtime DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES nr_ignore_buffer TYPE char1.
    TYPES nr_number TYPE n LENGTH 20.
    TYPES nr_numeric_check TYPE char1.
    TYPES nr_object TYPE c LENGTH 10.
    TYPES nr_quantity TYPE n LENGTH 20.
    TYPES nr_returncode TYPE c.
    TYPES nr_returned_quantity TYPE n LENGTH 20.
    TYPES nr_subobject TYPE c LENGTH 6.
    TYPES nr_toyear TYPE n LENGTH 4.
    TYPES nr_interval TYPE c LENGTH 2.

    METHODS number_check
      IMPORTING
      !nr_range_nr TYPE nr_interval
      !number TYPE nr_number
      !object TYPE nr_object
      !subobject TYPE nr_subobject DEFAULT space
      !toyear TYPE nr_toyear DEFAULT '0000'
      !numeric_check TYPE nr_numeric_check DEFAULT space
      EXPORTING
      !returncode TYPE nr_returncode
      EXCEPTIONS
      interval_not_found
      number_range_not_extern
      object_not_found
      check_error.
    METHODS number_get
      IMPORTING
      !nr_range_nr TYPE nr_interval
      !object TYPE nr_object
      !quantity TYPE nr_quantity DEFAULT '1'
      !subobject TYPE nr_subobject DEFAULT space
      !toyear TYPE nr_toyear DEFAULT '0000'
      !ignore_buffer TYPE nr_ignore_buffer DEFAULT space
      EXPORTING
      !number TYPE nr_number
      !returned_quantity TYPE nr_returned_quantity
      !returncode TYPE nr_returncode
      EXCEPTIONS
      interval_not_found
      number_range_not_intern
      object_not_found
      quantity_is_0
      quantity_is_not_1
      interval_overflow
      buffer_overflow.
ENDCLASS.

CLASS cl_number_range_runtime IMPLEMENTATION.
ENDCLASS.