CLASS cl_numberrange_objects DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES nr_activity TYPE activ_auth.
    TYPES nr_version TYPE char1.
    TYPES nr_devclass TYPE c LENGTH 30.
    TYPES nr_trkorr TYPE c LENGTH 20.
    TYPES:
      BEGIN OF nr_attribute,
           object       TYPE c LENGTH 10,
           dtelsobj     TYPE c LENGTH 30,
           yearind      TYPE c,
           domlen	      TYPE c LENGTH 30,
           percentage	  TYPE p LENGTH 3 DECIMALS 0,
           code	        TYPE c LENGTH 20,
           buffer       TYPE c,
           noivbuffer	  TYPE n LENGTH 8,
           nonrswap	    TYPE c,
           nrcheckascii TYPE c,
           abap_language_version TYPE c,
           devclass     TYPE c LENGTH 30,
           corrnr       TYPE c LENGTH 20,
           status       TYPE c LENGTH 1,
           changed_at   TYPE p LENGTH 21 DECIMALS 0,
           changed_by   TYPE c LENGTH 12,
         END OF nr_attribute.
    TYPES nr_attributes TYPE nr_attribute.
    TYPES: BEGIN OF nr_errors_line,
      msgid TYPE c LENGTH 20,
      msgtype TYPE c LENGTH 1,
      msgnumber TYPE n LENGTH 3,
      msgvar1 TYPE c LENGTH 50,
      msgvar2 TYPE c LENGTH 50,
      msgvar3 TYPE c LENGTH 50,
      msgvar4 TYPE c LENGTH 50,
      tablename TYPE c LENGTH 30,
      fieldname TYPE c LENGTH 30,
      critchange TYPE c LENGTH 10,
      END OF nr_errors_line.
    TYPES:
      nr_errors TYPE STANDARD TABLE OF nr_errors_line.
    TYPES nr_language TYPE sy-langu.
    TYPES nr_object TYPE c LENGTH 10.
    TYPES: BEGIN OF nr_obj_text,
      langu TYPE c LENGTH 1,
      object TYPE c LENGTH 10,
      txt TYPE c LENGTH 60,
      txtshort TYPE c LENGTH 20,
      uname TYPE c LENGTH 12,
      udate TYPE d,
      utime TYPE t,
      ename TYPE c LENGTH 12,
      edate TYPE d,
      etime TYPE t,
      END OF nr_obj_text.
    TYPES nr_returncode TYPE char1.
    TYPES nr_interval_exists TYPE char1.
    TYPES nr_flag TYPE abap_bool.

    CLASS-METHODS create
      IMPORTING
      !attributes TYPE nr_attributes
      !obj_text TYPE nr_obj_text
      EXPORTING
      !errors TYPE nr_errors
      !returncode TYPE nr_returncode
      RAISING
      cx_number_ranges.
    CLASS-METHODS get_abap_language_version
      IMPORTING
      !iv_devclass TYPE nr_devclass
      !iv_activity TYPE nr_activity
      EXPORTING
      !ev_abap_language_version TYPE nr_version
      !ev_error TYPE abap_bool
      RETURNING
      VALUE(rv_invalid_activity) TYPE abap_bool.
    CLASS-METHODS delete
      IMPORTING
      !object TYPE nr_object
      !corrnr TYPE nr_trkorr OPTIONAL
      RAISING
      cx_nr_object_not_found
      cx_number_ranges.
    CLASS-METHODS read
      IMPORTING
      !language TYPE nr_language DEFAULT sy-langu
      !object TYPE nr_object
      EXPORTING
      !attributes TYPE nr_attributes
      !interval_exists TYPE nr_interval_exists
      !obj_text TYPE nr_obj_text
      RAISING
      cx_nr_object_not_found
      cx_number_ranges.
    CLASS-METHODS update
      IMPORTING
      !attributes TYPE nr_attributes
      !obj_text TYPE nr_obj_text
      EXPORTING
      !errors TYPE nr_errors
      !returncode TYPE nr_returncode
      RAISING
      cx_nr_object_not_found
      cx_number_ranges.
ENDCLASS.

CLASS cl_numberrange_objects IMPLEMENTATION.
ENDCLASS.