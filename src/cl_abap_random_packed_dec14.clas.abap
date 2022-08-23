CLASS cl_abap_random_packed_dec14 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.

    TYPES:
      p31_14 TYPE p LENGTH 16 DECIMALS 14.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      !min TYPE p31_14 DEFAULT '-99999999999999999.99999999999999'
      !max TYPE p31_14 DEFAULT '99999999999999999.99999999999999'
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random_packed_dec14
      RAISING
      cx_abap_random.

    METHODS get_next
      RETURNING
      VALUE(value) TYPE p31_14.
ENDCLASS.

CLASS cl_abap_random_packed_dec14 IMPLEMENTATION.
ENDCLASS.