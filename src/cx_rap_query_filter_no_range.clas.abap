CLASS cx_rap_query_filter_no_range DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PRIVATE.

  PUBLIC SECTION.
    INTERFACES if_t100_dyn_msg.

    CLASS-METHODS not_expressable_as_range RETURNING VALUE(rx) TYPE REF TO cx_rap_query_filter_no_range.

    METHODS constructor.

ENDCLASS.

CLASS cx_rap_query_filter_no_range IMPLEMENTATION.
ENDCLASS.