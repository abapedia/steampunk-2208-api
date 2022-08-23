CLASS cx_rap_query_response_set_twic DEFINITION
  PUBLIC
  FINAL
  INHERITING FROM cx_dynamic_check
  CREATE PRIVATE.

  PUBLIC SECTION.
    INTERFACES if_t100_dyn_msg.

    CLASS-METHODS setter_already_called RETURNING VALUE(rx) TYPE REF TO cx_rap_query_response_set_twic.

    METHODS constructor.

ENDCLASS.

CLASS cx_rap_query_response_set_twic IMPLEMENTATION.
ENDCLASS.