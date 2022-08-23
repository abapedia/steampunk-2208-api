CLASS cl_abap_random DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.

    TYPES:
      p31_0 TYPE p LENGTH 16 DECIMALS 0.

    CLASS-METHODS create
      IMPORTING
      !seed TYPE i OPTIONAL
      RETURNING
      VALUE(prng) TYPE REF TO cl_abap_random.
    METHODS int
      RETURNING
      VALUE(value) TYPE i.
    METHODS int31
      RETURNING
      VALUE(value) TYPE i.
    METHODS float
      RETURNING
      VALUE(value) TYPE f.
    CLASS-METHODS seed
      RETURNING
      VALUE(seed) TYPE i.
    METHODS intinrange
      IMPORTING
      !low TYPE i DEFAULT 0
      !high TYPE i DEFAULT 0
      RETURNING
      VALUE(value) TYPE i
      RAISING
      cx_abap_random.
    METHODS packed
      RETURNING
      VALUE(value) TYPE p31_0.
    METHODS packedinrange
      IMPORTING
      !min TYPE p31_0 DEFAULT '-9999999999999999999999999999999'
      !max TYPE p31_0 DEFAULT '9999999999999999999999999999999'
      RETURNING
      VALUE(value) TYPE p31_0
      RAISING
      cx_abap_random.
    METHODS decfloat16
      RETURNING
      VALUE(value) TYPE decfloat16.
    METHODS decfloat34
      RETURNING
      VALUE(value) TYPE decfloat34.
    METHODS int8
      RETURNING
      VALUE(value) TYPE int8.
    METHODS int8inrange
      IMPORTING
      !low TYPE int8 DEFAULT cl_abap_math=>min_int8
      !high TYPE int8 DEFAULT cl_abap_math=>max_int8
      RETURNING
      VALUE(value) TYPE int8
      RAISING
      cx_abap_random.
ENDCLASS.

CLASS cl_abap_random IMPLEMENTATION.
ENDCLASS.