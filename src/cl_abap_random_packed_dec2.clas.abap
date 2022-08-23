CLASS cl_abap_random_packed_dec2 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.

    TYPES:
      p31_2 TYPE p LENGTH 16 DECIMALS 2.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      !min TYPE p31_2 DEFAULT '-99999999999999999999999999999.99'
      !max TYPE p31_2 DEFAULT '99999999999999999999999999999.99'
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random_packed_dec2
      RAISING
      cx_abap_random.

    METHODS get_next
      RETURNING
      VALUE(value) TYPE p31_2.
ENDCLASS.

CLASS cl_abap_random_packed_dec2 IMPLEMENTATION.
ENDCLASS.