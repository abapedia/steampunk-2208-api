CLASS cx_xco_lock_exception DEFINITION PUBLIC
    INHERITING FROM cx_static_check CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES:
      if_t100_dyn_msg,
      if_xco_news.

    METHODS:
      constructor
        IMPORTING
          textid LIKE if_t100_message=>t100key OPTIONAL.
ENDCLASS.

CLASS cx_xco_lock_exception IMPLEMENTATION.
ENDCLASS.