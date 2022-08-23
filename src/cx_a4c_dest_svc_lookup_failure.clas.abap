CLASS cx_a4c_dest_svc_lookup_failure DEFINITION
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

CLASS cx_a4c_dest_svc_lookup_failure IMPLEMENTATION.
ENDCLASS.