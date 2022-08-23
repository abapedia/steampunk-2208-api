CLASS cl_abap_random_int8 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      !min TYPE int8 DEFAULT cl_abap_math=>min_int8
      !max TYPE int8 DEFAULT cl_abap_math=>max_int8
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random_int8
      RAISING
      cx_abap_random.
    METHODS get_next
      RETURNING
      VALUE(value) TYPE int8.
ENDCLASS.

CLASS cl_abap_random_int8 IMPLEMENTATION.
ENDCLASS.