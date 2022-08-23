CLASS cl_abap_random_packed_dec10 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.

    TYPES:
      p31_10 TYPE p LENGTH 16 DECIMALS 10.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      !min TYPE p31_10 DEFAULT '-999999999999999999999.9999999999'
      !max TYPE p31_10 DEFAULT '999999999999999999999.9999999999'
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random_packed_dec10
      RAISING
      cx_abap_random.

    METHODS get_next
      RETURNING
      VALUE(value) TYPE p31_10.
ENDCLASS.

CLASS cl_abap_random_packed_dec10 IMPLEMENTATION.
ENDCLASS.