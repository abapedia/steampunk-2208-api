CLASS cl_abap_random_packed_dec8 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.

    TYPES:
      p31_8 TYPE p LENGTH 16 DECIMALS 8.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      !min TYPE p31_8 DEFAULT '-99999999999999999999999.99999999'
      !max TYPE p31_8 DEFAULT '99999999999999999999999.99999999'
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random_packed_dec8
      RAISING
      cx_abap_random.

    METHODS get_next
      RETURNING
      VALUE(value) TYPE p31_8.
ENDCLASS.

CLASS cl_abap_random_packed_dec8 IMPLEMENTATION.
ENDCLASS.