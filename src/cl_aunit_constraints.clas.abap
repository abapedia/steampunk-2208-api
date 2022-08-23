CLASS cl_aunit_constraints DEFINITION  PUBLIC  FINAL  CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS:
      and
        IMPORTING   c1                  TYPE REF TO if_constraint
                    c2                  TYPE REF TO if_constraint
                    c3                  TYPE REF TO if_constraint OPTIONAL
                    c4                  TYPE REF TO if_constraint OPTIONAL
      RETURNING     VALUE(result)       TYPE REF TO if_constraint,
      nand
      IMPORTING     c1                  TYPE REF TO if_constraint
                    c2                  TYPE REF TO if_constraint
                    c3                  TYPE REF TO if_constraint OPTIONAL
                    c4                  TYPE REF TO if_constraint OPTIONAL
      RETURNING     VALUE(result)       TYPE REF TO if_constraint,
      nor
      IMPORTING     c1                  TYPE REF TO if_constraint
                    c2                  TYPE REF TO if_constraint
                    c3                  TYPE REF TO if_constraint OPTIONAL
                    c4                  TYPE REF TO if_constraint OPTIONAL
      RETURNING     VALUE(result)       TYPE REF TO if_constraint,
      not
      IMPORTING     constraint          TYPE REF TO if_constraint
      RETURNING     VALUE(result)       TYPE REF TO if_constraint,
      or
      IMPORTING     c1                  TYPE REF TO if_constraint
                    c2                  TYPE REF TO if_constraint
                    c3                  TYPE REF TO if_constraint OPTIONAL
                    c4                  TYPE REF TO if_constraint OPTIONAL
      RETURNING     VALUE(result)       TYPE REF TO if_constraint,
      xor
      IMPORTING     c1                  TYPE REF TO if_constraint
                    c2                  TYPE REF TO if_constraint
      RETURNING     VALUE(result)       TYPE REF TO if_constraint.

ENDCLASS.

CLASS cl_aunit_constraints IMPLEMENTATION.
ENDCLASS.