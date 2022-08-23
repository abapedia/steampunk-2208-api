CLASS cl_abap_random_packed_dec7 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.

    TYPES:
      p31_7 TYPE p LENGTH 16 DECIMALS 7.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      !min TYPE p31_7 DEFAULT '-999999999999999999999999.9999999'
      !max TYPE p31_7 DEFAULT '999999999999999999999999.9999999'
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random_packed_dec7
      RAISING
      cx_abap_random.

    METHODS get_next
      RETURNING
      VALUE(value) TYPE p31_7.
ENDCLASS.

CLASS cl_abap_random_packed_dec7 IMPLEMENTATION.
ENDCLASS.