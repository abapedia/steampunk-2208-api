CLASS cl_abap_random_decfloat34 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random_decfloat34.
    METHODS get_next
      RETURNING
      VALUE(value) TYPE decfloat34.
ENDCLASS.

CLASS cl_abap_random_decfloat34 IMPLEMENTATION.
ENDCLASS.