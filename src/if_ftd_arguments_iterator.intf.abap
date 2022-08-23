INTERFACE if_ftd_arguments_iterator
  PUBLIC.
  METHODS
    next
      RETURNING
        VALUE(result) TYPE REF TO if_ftd_testdouble_argument
      RAISING  cx_ftd_exception.
  METHODS
    has_next
      RETURNING VALUE(result) TYPE abap_bool.
  METHODS
    reset_iterator.
  METHODS size
    RETURNING
      VALUE(result) TYPE i.

ENDINTERFACE.