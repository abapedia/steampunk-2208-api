CLASS cl_xco_asql_constraint_factory DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      tv_escape TYPE c LENGTH 1.

    METHODS:
      equal
        IMPORTING
          iv_value        TYPE clike
        RETURNING
          VALUE(ro_equal) TYPE REF TO cl_xco_asql_constraint,
      not_equal
        IMPORTING
          iv_value            TYPE clike
        RETURNING
          VALUE(ro_not_equal) TYPE REF TO cl_xco_asql_constraint,
      between
        IMPORTING
          iv_low            TYPE clike
          iv_high           TYPE clike
        RETURNING
          VALUE(ro_between) TYPE REF TO cl_xco_asql_constraint,
      not_between
        IMPORTING
          iv_low                TYPE clike
          iv_high               TYPE clike
        RETURNING
          VALUE(ro_not_between) TYPE REF TO cl_xco_asql_constraint,
      less_equal
        IMPORTING
          iv_value             TYPE clike
        RETURNING
          VALUE(ro_less_equal) TYPE REF TO cl_xco_asql_constraint,
      greater_than
        IMPORTING
          iv_value               TYPE clike
        RETURNING
          VALUE(ro_greater_than) TYPE REF TO cl_xco_asql_constraint,
      greater_equal
        IMPORTING
          iv_value                TYPE clike
        RETURNING
          VALUE(ro_greater_equal) TYPE REF TO cl_xco_asql_constraint,
      less_than
        IMPORTING
          iv_value            TYPE clike
        RETURNING
          VALUE(ro_less_than) TYPE REF TO cl_xco_asql_constraint,
      contains_pattern
        IMPORTING
          iv_value                   TYPE clike
          iv_escape                  TYPE tv_escape OPTIONAL
        RETURNING
          VALUE(ro_contains_pattern) TYPE REF TO cl_xco_asql_constraint,
      does_not_contain_pattern
        IMPORTING
          iv_value                           TYPE clike
          iv_escape                          TYPE tv_escape OPTIONAL
        RETURNING
          VALUE(ro_does_not_contain_pattern) TYPE REF TO cl_xco_asql_constraint.
ENDCLASS.

CLASS cl_xco_asql_constraint_factory IMPLEMENTATION.
ENDCLASS.