CLASS cl_abap_unit_assert DEFINITION  PUBLIC ABSTRACT FINAL CREATE PRIVATE.

  PUBLIC SECTION.
    CONSTANTS rtol_default TYPE f VALUE '1.E-14' ##no_Text.

    CLASS-METHODS:
      abort
        IMPORTING   !msg                    TYPE csequence OPTIONAL
                    !detail                 TYPE csequence OPTIONAL
                    !quit                   TYPE int1 DEFAULT 2
        PREFERRED PARAMETER msg,
      assert_bound
        IMPORTING   VALUE(act)              TYPE any
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_char_cp
        IMPORTING   !act                    TYPE csequence
                    !exp                    TYPE csequence
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_char_np
        IMPORTING   VALUE(act)              TYPE csequence
                    !exp                    TYPE csequence
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_differs
        IMPORTING   VALUE(act)              TYPE simple
                    VALUE(exp)              TYPE simple
                    !tol                    TYPE f OPTIONAL
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_equals
        IMPORTING   VALUE(act)              TYPE any
                    VALUE(exp)              TYPE any
                    !ignore_hash_sequence   TYPE abap_bool DEFAULT abap_false
                    !tol                    TYPE f OPTIONAL
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_equals_float
        IMPORTING   VALUE(act)              TYPE numeric
                    VALUE(exp)              TYPE numeric
                    !rtol                   TYPE numeric DEFAULT cl_abap_unit_assert=>rtol_default
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_false
        IMPORTING   VALUE(act)              TYPE abap_bool
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_initial
        IMPORTING   VALUE(act)              TYPE any DEFAULT sy-subrc
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        PREFERRED PARAMETER act
        RETURNING
                    VALUE(assertion_failed) TYPE abap_bool,
      assert_not_bound
        IMPORTING   VALUE(act)              TYPE any
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_not_initial
        IMPORTING   VALUE(act)              TYPE any
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING
                    VALUE(assertion_failed) TYPE abap_bool,
      assert_number_between
        IMPORTING   !lower                  TYPE numeric
                    !upper                  TYPE numeric
                    !number                 TYPE numeric
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_return_code
        IMPORTING   VALUE(exp)              TYPE numeric
                    VALUE(act)              TYPE numeric DEFAULT sy-subrc
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
                    !symsg                  TYPE symsg OPTIONAL
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_subrc
        IMPORTING   VALUE(exp)              TYPE sysubrc DEFAULT 0
                    VALUE(act)              TYPE sysubrc DEFAULT sy-subrc
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
                    !symsg                  TYPE symsg OPTIONAL
        PREFERRED PARAMETER act
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_table_contains
        IMPORTING   VALUE(line)             TYPE any
                    !table                  TYPE ANY TABLE
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_table_not_contains
        IMPORTING   VALUE(line)             TYPE any
                    !table                  TYPE ANY TABLE
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_text_matches
        IMPORTING   VALUE(pattern)          TYPE csequence
                    VALUE(text)             TYPE csequence
                    VALUE(full)             TYPE abap_bool DEFAULT abap_false
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_text_not_matches
        IMPORTING   VALUE(pattern)          TYPE csequence
                    VALUE(text)             TYPE csequence
                    VALUE(full)             TYPE abap_bool DEFAULT abap_false
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_that
        IMPORTING   VALUE(act)              TYPE data
                    VALUE(act_as_text)      TYPE csequence OPTIONAL
                    !exp                    TYPE REF TO if_constraint
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assert_true
        IMPORTING   VALUE(act)              TYPE abap_bool
                    !msg                    TYPE csequence OPTIONAL
                    !level                  TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit                   TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
        RETURNING   VALUE(assertion_failed) TYPE abap_bool,
      assume_false
        IMPORTING   VALUE(act)              TYPE abap_bool
                    !msg                    TYPE csequence,
      assume_return_code
        IMPORTING   VALUE(exp)              TYPE numeric
                    VALUE(act)              TYPE numeric  DEFAULT sy-subrc
                    !msg                    TYPE csequence
                    !symsg                  TYPE symsg OPTIONAL,
      assume_that
        IMPORTING   VALUE(act)              TYPE data
                    VALUE(act_as_text)      TYPE csequence OPTIONAL
                    !exp                    TYPE REF TO if_constraint
                    !msg                    TYPE csequence OPTIONAL,
      assume_true
        IMPORTING   VALUE(act)              TYPE abap_bool
                    !msg                    TYPE csequence,
      fail
        IMPORTING   !msg                TYPE csequence OPTIONAL
                    !level              TYPE int1 DEFAULT if_abap_unit_constant=>severity-medium
                    !quit               TYPE int1 DEFAULT if_abap_unit_constant=>quit-test
                    !detail             TYPE csequence OPTIONAL
        PREFERRED PARAMETER msg,
      skip
        IMPORTING   !msg                 TYPE csequence
                    !detail              TYPE csequence OPTIONAL.

    TYPES:
      n1                  TYPE n LENGTH 1.
ENDCLASS.

CLASS cl_abap_unit_assert IMPLEMENTATION.
ENDCLASS.