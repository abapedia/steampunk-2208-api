CLASS cl_abap_lock_object_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS get_instance IMPORTING iv_name               TYPE if_abap_lock_object=>tv_name
                               RETURNING VALUE(ro_lock_object) TYPE REF TO if_abap_lock_object
                               RAISING   cx_abap_lock_failure.
    CLASS-METHODS dequeue_all IMPORTING _synchronous TYPE if_abap_lock_object=>tv_synchronous DEFAULT space.

ENDCLASS.

CLASS cl_abap_lock_object_factory IMPLEMENTATION.
ENDCLASS.