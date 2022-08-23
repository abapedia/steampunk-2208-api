INTERFACE if_xco_dp_addition PUBLIC.
  INTERFACES:
    if_xco_dp_action_decorator.

  METHODS:
    on_start
      IMPORTING
        io_ongoing_action TYPE REF TO if_xco_dp_ongoing_action,
    on_end
      IMPORTING
        io_ongoing_action TYPE REF TO if_xco_dp_ongoing_action,
    on_cleanup
      IMPORTING
        ix_uncaught_exception TYPE REF TO cx_root
        io_ongoing_action     TYPE REF TO if_xco_dp_ongoing_action.
ENDINTERFACE.