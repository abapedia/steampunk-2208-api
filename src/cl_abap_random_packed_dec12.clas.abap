CLASS cl_abap_random_packed_dec12 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.

    TYPES:
      p31_12 TYPE p LENGTH 16 DECIMALS 12.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      !min TYPE p31_12 DEFAULT '-9999999999999999999.999999999999'
      !max TYPE p31_12 DEFAULT '9999999999999999999.999999999999'
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random_packed_dec12
      RAISING
      cx_abap_random.

    METHODS get_next
      RETURNING
      VALUE(value) TYPE p31_12.
ENDCLASS.

CLASS cl_abap_random_packed_dec12 IMPLEMENTATION.
ENDCLASS.