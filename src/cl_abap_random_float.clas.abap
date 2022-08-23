CLASS cl_abap_random_float DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random_float.
    METHODS get_next
      RETURNING
      VALUE(value) TYPE f.
ENDCLASS.

CLASS cl_abap_random_float IMPLEMENTATION.
ENDCLASS.