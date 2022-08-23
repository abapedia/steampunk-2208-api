CLASS cx_ws_protocol_error DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.
    INTERFACES if_t100_dyn_msg.

    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL.

  PROTECTED SECTION.
ENDCLASS.

CLASS cx_ws_protocol_error IMPLEMENTATION.
ENDCLASS.