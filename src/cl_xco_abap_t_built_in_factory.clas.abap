CLASS cl_xco_abap_t_built_in_factory DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      b          TYPE REF TO cl_xco_abap_t_bi_fixed_length READ-ONLY,
      s          TYPE REF TO cl_xco_abap_t_bi_fixed_length READ-ONLY,
      i          TYPE REF TO cl_xco_abap_t_bi_fixed_length READ-ONLY,
      int8       TYPE REF TO cl_xco_abap_t_bi_fixed_length READ-ONLY,
      decfloat16 TYPE REF TO cl_xco_abap_t_bi_fixed_length READ-ONLY,
      decfloat34 TYPE REF TO cl_xco_abap_t_bi_fixed_length READ-ONLY,
      f          TYPE REF TO cl_xco_abap_t_bi_fixed_length READ-ONLY,

      string     TYPE REF TO cl_xco_abap_t_bi_fixed_length READ-ONLY,

      xstring    TYPE REF TO cl_xco_abap_t_bi_fixed_length READ-ONLY,

      d          TYPE REF TO cl_xco_abap_t_bi_fixed_length READ-ONLY,
      t          TYPE REF TO cl_xco_abap_t_bi_fixed_length READ-ONLY,
      utclong    TYPE REF TO cl_xco_abap_t_bi_fixed_length READ-ONLY.

    METHODS:
      p
        IMPORTING
          iv_length   TYPE i DEFAULT 8
          iv_decimals TYPE i DEFAULT 0
        RETURNING
          VALUE(ro_p) TYPE REF TO cl_xco_abap_t_bi_p,

      c
        IMPORTING
          iv_length   TYPE i DEFAULT 1
        RETURNING
          VALUE(ro_c) TYPE REF TO cl_xco_abap_t_bi_vrble_length,

      n
        IMPORTING
          iv_length   TYPE i DEFAULT 1
        RETURNING
          VALUE(ro_n) TYPE REF TO cl_xco_abap_t_bi_vrble_length,

      x
        IMPORTING
          iv_length   TYPE i DEFAULT 1
        RETURNING
          VALUE(ro_x) TYPE REF TO cl_xco_abap_t_bi_vrble_length.

ENDCLASS.

CLASS cl_xco_abap_t_built_in_factory IMPLEMENTATION.
ENDCLASS.