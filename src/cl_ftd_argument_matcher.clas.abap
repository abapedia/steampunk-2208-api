CLASS cl_ftd_argument_matcher DEFINITION PUBLIC FINAL CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS:
      any_object
        RETURNING
          VALUE(result) TYPE REF TO if_ftd_argument_matcher.

    CLASS-METHODS:
      is_not_initial
        RETURNING
          VALUE(result) TYPE REF TO if_ftd_argument_matcher.

    CLASS-METHODS:
      is_initial
        RETURNING
          VALUE(result) TYPE REF TO if_ftd_argument_matcher.

    CLASS-METHODS:
      covers_pattern
        IMPORTING
          pattern       TYPE string
        RETURNING
          VALUE(result) TYPE REF TO if_ftd_argument_matcher.

    CLASS-METHODS:
      matches
        IMPORTING
          regex         TYPE string
        RETURNING
          VALUE(result) TYPE REF TO if_ftd_argument_matcher.

ENDCLASS.

CLASS cl_ftd_argument_matcher IMPLEMENTATION.
ENDCLASS.