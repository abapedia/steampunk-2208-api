CLASS cl_abap_random_packed_dec1 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.

    TYPES:
      p31_1 TYPE p LENGTH 16 DECIMALS 1.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      !min TYPE p31_1 DEFAULT '-999999999999999999999999999999.9'
      !max TYPE p31_1 DEFAULT '999999999999999999999999999999.9'
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random_packed_dec1
      RAISING
      cx_abap_random.

    METHODS get_next
      RETURNING
      VALUE(value) TYPE p31_1.
ENDCLASS.

CLASS cl_abap_random_packed_dec1 IMPLEMENTATION.
ENDCLASS.