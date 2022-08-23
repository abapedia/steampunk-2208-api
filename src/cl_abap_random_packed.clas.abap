CLASS cl_abap_random_packed DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.
    TYPES p31_0 TYPE cl_abap_random=>p31_0.

    METHODS constructor
      IMPORTING
      !min TYPE p31_0
      !max TYPE p31_0
      !seed TYPE i OPTIONAL
      RAISING
      cx_abap_random.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      !min TYPE p31_0 DEFAULT -9999999999999999999999999999999
      !max TYPE p31_0 DEFAULT 9999999999999999999999999999999
      PREFERRED PARAMETER seed
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random_packed
      RAISING
      cx_abap_random.

    METHODS get_next
      RETURNING
      VALUE(value) TYPE p31_0.
ENDCLASS.

CLASS cl_abap_random_packed IMPLEMENTATION.
ENDCLASS.