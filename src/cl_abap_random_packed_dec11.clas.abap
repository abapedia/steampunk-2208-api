CLASS cl_abap_random_packed_dec11 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.

    TYPES:
      p31_11 TYPE p LENGTH 16 DECIMALS 11.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      !min TYPE p31_11 DEFAULT '-99999999999999999999.99999999999'
      !max TYPE p31_11 DEFAULT '99999999999999999999.99999999999'
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random_packed_dec11
      RAISING
      cx_abap_random.

    METHODS get_next
      RETURNING
      VALUE(value) TYPE p31_11.
ENDCLASS.

CLASS cl_abap_random_packed_dec11 IMPLEMENTATION.
ENDCLASS.