CLASS cl_abap_random_packed_dec3 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.

    TYPES:
      p31_3 TYPE p LENGTH 16 DECIMALS 3.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      !min TYPE p31_3 DEFAULT '-9999999999999999999999999999.999'
      !max TYPE p31_3 DEFAULT '9999999999999999999999999999.999'
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random_packed_dec3
      RAISING
      cx_abap_random.

    METHODS get_next
      RETURNING
      VALUE(value) TYPE p31_3.
ENDCLASS.

CLASS cl_abap_random_packed_dec3 IMPLEMENTATION.
ENDCLASS.