CLASS cx_xco_runtime_exception DEFINITION PUBLIC ABSTRACT
    INHERITING FROM cx_no_check CREATE PROTECTED.
  PUBLIC SECTION.
    INTERFACES:
      if_t100_dyn_msg,

      if_xco_news.

    METHODS:
      get_message
        RETURNING
          VALUE(ro_message) TYPE REF TO if_xco_message.

  PROTECTED SECTION.
    METHODS:
      constructor
        IMPORTING
          textid   LIKE if_t100_message=>t100key OPTIONAL
          previous LIKE previous OPTIONAL.

ENDCLASS.

CLASS cx_xco_runtime_exception IMPLEMENTATION.
ENDCLASS.