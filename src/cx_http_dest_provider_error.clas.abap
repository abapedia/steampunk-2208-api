CLASS cx_http_dest_provider_error DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg.

    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL.
    METHODS get_message_id
      RETURNING
        VALUE(id) TYPE symsgno.

  PROTECTED SECTION.
ENDCLASS.

CLASS cx_http_dest_provider_error IMPLEMENTATION.
ENDCLASS.