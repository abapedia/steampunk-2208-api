CLASS cl_number_range_objects DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES: BEGIN OF nr_attributes,
      object TYPE c LENGTH 10,
      dtelsobj TYPE c LENGTH 30,
      nrtab TYPE c LENGTH 30,
      nrintfld TYPE c LENGTH 30,
      nrextfld TYPE c LENGTH 30,
      nrfld TYPE c LENGTH 30,
      nrsobjfld TYPE c LENGTH 30,
      nrelefld TYPE c LENGTH 30,
      yearind TYPE c LENGTH 1,
      domlen TYPE c LENGTH 30,
      percentage TYPE p LENGTH 3 DECIMALS 0,
      code TYPE c LENGTH 20,
      textind TYPE c LENGTH 1,
      nreltxttab TYPE c LENGTH 30,
      nreltxtsob TYPE c LENGTH 30,
      nreltxtele TYPE c LENGTH 30,
      nreltxttxt TYPE c LENGTH 30,
      nreltxtlng TYPE c LENGTH 30,
      buffer TYPE c LENGTH 1,
      noivbuffer TYPE n LENGTH 8,
      nonrswap TYPE c LENGTH 1,
      rfcdest TYPE c LENGTH 32,
      nrcheckascii TYPE c LENGTH 1,
      abap_language_version TYPE c LENGTH 1,
      status TYPE c LENGTH 1,
      changed_at TYPE p LENGTH 21 DECIMALS 0,
      changed_by TYPE c LENGTH 12,
      uname TYPE c LENGTH 12,
      udate TYPE d,
      utime TYPE t,
      ename TYPE c LENGTH 12,
      edate TYPE d,
      etime TYPE t,
      ignore_group TYPE c LENGTH 1,
      END OF nr_attributes.
    TYPES: BEGIN OF nr_error,
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
      END OF nr_error.
    TYPES nr_errors TYPE STANDARD TABLE OF nr_error WITH DEFAULT KEY.
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

    METHODS create
      IMPORTING
      !attributes TYPE nr_attributes
      !obj_text TYPE nr_obj_text
      EXPORTING
      !returncode TYPE nr_returncode
      !errors TYPE nr_errors
      EXCEPTIONS
      object_already_exists
      object_attributes_missing
      object_text_missing
      create_error.
    METHODS delete
      IMPORTING
      !object TYPE nr_object
      EXCEPTIONS
      delete_not_allowed
      object_not_found
      foreign_lock
      lock_error
      delete_error
      lock_system_failure.
    METHODS read
      IMPORTING
      !object TYPE nr_object
      !language TYPE nr_language DEFAULT sy-langu
      EXPORTING
      !attributes TYPE nr_attributes
      !obj_text TYPE nr_obj_text
      !interval_exists TYPE nr_interval_exists
      EXCEPTIONS
      object_not_found.
    METHODS update
      IMPORTING
      !attributes TYPE nr_attributes
      !obj_text TYPE nr_obj_text
      EXPORTING
      !returncode TYPE nr_returncode
      !errors TYPE nr_errors
      EXCEPTIONS
      object_not_found
      object_attributes_missing
      object_text_missing
      foreign_lock
      lock_error
      update_error
      lock_system_failure.
ENDCLASS.

CLASS cl_number_range_objects IMPLEMENTATION.
ENDCLASS.