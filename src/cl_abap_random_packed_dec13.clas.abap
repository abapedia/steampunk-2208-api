CLASS cl_abap_random_packed_dec13 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.

    TYPES:
      p31_13 TYPE p LENGTH 16 DECIMALS 13.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      !min TYPE p31_13 DEFAULT '-999999999999999999.9999999999999'
      !max TYPE p31_13 DEFAULT '999999999999999999.9999999999999'
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random_packed_dec13
      RAISING
      cx_abap_random.

    METHODS get_next
      RETURNING
      VALUE(value) TYPE p31_13.
ENDCLASS.

CLASS cl_abap_random_packed_dec13 IMPLEMENTATION.
ENDCLASS.