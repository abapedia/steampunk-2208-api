CLASS cx_chdo_write_error DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_chdo_write_error IMPLEMENTATION.
ENDCLASS.