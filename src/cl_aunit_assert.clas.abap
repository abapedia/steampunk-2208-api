CLASS cl_aunit_assert DEFINITION  PUBLIC  ABSTRACT  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_aunit_constants.

    ALIASES class         FOR if_aunit_constants~class.
    ALIASES fatal         FOR if_aunit_constants~fatal.
    ALIASES critical      FOR if_aunit_constants~critical.
    ALIASES method        FOR if_aunit_constants~method.
    ALIASES no            FOR if_aunit_constants~no.
    ALIASES program       FOR if_aunit_constants~program.
    ALIASES tolerable     FOR if_aunit_constants~tolerable.

    ALIASES tolerant      FOR if_aunit_constants~tolerant.

    TYPES:
      n1 TYPE n LENGTH 1.
    CONSTANTS rtol_default TYPE f VALUE '1.E-14' ##no_Text.
    CONSTANTS rtol_default_df34 TYPE decfloat34 VALUE '1.E-14' ##no_Text.
    CLASS-METHODS abort
      IMPORTING
        msg TYPE csequence OPTIONAL
        detail TYPE csequence OPTIONAL
        quit TYPE int1 DEFAULT cl_aunit_assert=>class
      PREFERRED PARAMETER msg.
    CLASS-METHODS assert_bound
      IMPORTING   VALUE(act) TYPE any
                  msg TYPE csequence OPTIONAL
                  level TYPE int1 DEFAULT if_aunit_constants=>severity-medium
                  quit TYPE int1 DEFAULT if_aunit_constants=>quit-test
      RETURNING   VALUE(assertion_failed) TYPE abap_bool.
    CLASS-METHODS
      assert_char_cp
        IMPORTING     VALUE(act) TYPE csequence
                      VALUE(exp) TYPE csequence
                      msg TYPE csequence OPTIONAL
                      level TYPE int1 DEFAULT if_aunit_constants=>severity-medium
                      quit TYPE int1 DEFAULT if_aunit_constants=>quit-test
      RETURNING       VALUE(assertion_failed) TYPE abap_bool.
    CLASS-METHODS
      assert_char_np
        IMPORTING VALUE(act) TYPE csequence
                  VALUE(exp) TYPE csequence
                  msg TYPE csequence OPTIONAL
                  level TYPE int1 DEFAULT if_aunit_constants=>severity-medium
                  quit TYPE int1 DEFAULT if_aunit_constants=>quit-test
      RETURNING   VALUE(assertion_failed) TYPE abap_bool.
    CLASS-METHODS
      assert_differs
        IMPORTING VALUE(exp) TYPE simple
                  VALUE(act) TYPE simple
                  msg TYPE csequence OPTIONAL
                  level TYPE int1 DEFAULT if_aunit_constants=>severity-medium
                  tol TYPE f OPTIONAL
                  quit TYPE int1 DEFAULT if_aunit_constants=>quit-test
      RETURNING   VALUE(assertion_failed) TYPE abap_bool.
    CLASS-METHODS
      assert_equals
        IMPORTING     VALUE(exp) TYPE any
                      VALUE(act) TYPE any
                      msg TYPE csequence OPTIONAL
                      level TYPE int1 DEFAULT if_aunit_constants=>severity-medium
                      tol TYPE f OPTIONAL
                      quit TYPE int1 DEFAULT if_aunit_constants=>quit-test
                      ignore_hash_sequence TYPE abap_bool DEFAULT abap_false
        RETURNING     VALUE(assertion_failed) TYPE abap_bool.
    CLASS-METHODS
      assert_equals_f
        IMPORTING     VALUE(exp) TYPE f
                      VALUE(act) TYPE f
                      msg TYPE csequence OPTIONAL
                      rtol TYPE f DEFAULT cl_aunit_assert=>rtol_default
                      level TYPE int1 DEFAULT if_aunit_constants=>severity-medium
                      quit TYPE int1 DEFAULT if_aunit_constants=>quit-test
        RETURNING     VALUE(assertion_failed) TYPE abap_bool.
    CLASS-METHODS
      assert_equals_float
        IMPORTING     VALUE(exp) TYPE numeric
                      VALUE(act) TYPE numeric
                      msg TYPE csequence OPTIONAL
                      rtol TYPE numeric DEFAULT cl_aunit_assert=>rtol_default
                      level TYPE int1 DEFAULT if_aunit_constants=>severity-medium
                      quit TYPE int1 DEFAULT if_aunit_constants=>quit-test
        RETURNING     VALUE(assertion_failed) TYPE abap_bool.
    CLASS-METHODS
      assert_initial
        IMPORTING     VALUE(act) TYPE any
                      msg TYPE csequence OPTIONAL
                      level TYPE int1 DEFAULT if_aunit_constants=>severity-medium
                      quit TYPE int1 DEFAULT if_aunit_constants=>quit-test
        RETURNING     VALUE(assertion_failed) TYPE abap_bool.
    CLASS-METHODS
      assert_not_bound
        IMPORTING         VALUE(act) TYPE any
                          msg TYPE csequence OPTIONAL
                          level TYPE int1 DEFAULT if_aunit_constants=>severity-medium
                          quit TYPE int1 DEFAULT if_aunit_constants=>quit-test
        RETURNING         VALUE(assertion_failed) TYPE abap_bool.
    CLASS-METHODS
      assert_not_initial
        IMPORTING     VALUE(act) TYPE any
                      msg TYPE csequence OPTIONAL
                      level TYPE int1 DEFAULT if_aunit_constants=>severity-medium
                      quit TYPE int1 DEFAULT if_aunit_constants=>quit-test
        RETURNING     VALUE(assertion_failed) TYPE abap_bool.
    CLASS-METHODS
      assert_subrc
        IMPORTING     VALUE(exp) TYPE sysubrc DEFAULT 0
                      VALUE(act) TYPE sysubrc
                      msg TYPE csequence OPTIONAL
                      level TYPE int1 DEFAULT if_aunit_constants=>severity-medium
                      quit TYPE int1 DEFAULT if_aunit_constants=>quit-test
                      symsg TYPE symsg OPTIONAL
        RETURNING     VALUE(assertion_failed) TYPE abap_bool.
    CLASS-METHODS
      assert_that
        IMPORTING     VALUE(act) TYPE data
                      VALUE(exp) TYPE REF TO if_constraint
                      msg TYPE csequence OPTIONAL
                      level TYPE int1 DEFAULT if_aunit_constants=>severity-medium
                      quit TYPE int1 DEFAULT if_aunit_constants=>quit-test
        RETURNING     VALUE(assertion_failed) TYPE abap_bool.
    CLASS-METHODS
      fail
        IMPORTING     msg TYPE csequence OPTIONAL
                      level TYPE int1 DEFAULT if_aunit_constants=>severity-medium
                      quit TYPE int1 DEFAULT if_aunit_constants=>quit-test
                      detail TYPE csequence OPTIONAL
        PREFERRED PARAMETER msg.

ENDCLASS.

CLASS cl_aunit_assert IMPLEMENTATION.
ENDCLASS.