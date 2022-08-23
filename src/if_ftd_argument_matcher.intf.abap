INTERFACE if_ftd_argument_matcher
  PUBLIC.
  METHODS matches
    IMPORTING
      actual_argument TYPE REF TO if_ftd_testdouble_argument
    RETURNING
      VALUE(result) TYPE abap_bool.

ENDINTERFACE.