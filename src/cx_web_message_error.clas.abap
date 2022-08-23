CLASS cx_web_message_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL.
    METHODS get_message_number
    RETURNING
      VALUE(msgno) TYPE symsgno.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_web_message_error IMPLEMENTATION.
ENDCLASS.