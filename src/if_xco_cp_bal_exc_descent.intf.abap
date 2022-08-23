INTERFACE if_xco_cp_bal_exc_descent PUBLIC.
  TYPES:
    tt_exceptions TYPE STANDARD TABLE OF REF TO cx_root WITH EMPTY KEY.

  METHODS:
    get_exceptions
      IMPORTING
        ix_exception         TYPE REF TO cx_root
      RETURNING
        VALUE(rt_exceptions) TYPE tt_exceptions.
ENDINTERFACE.