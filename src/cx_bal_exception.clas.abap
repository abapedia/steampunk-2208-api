CLASS cx_bal_exception DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.

    ALIASES msgty
    FOR if_t100_dyn_msg~msgty.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !msgty TYPE symsgty OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_bal_exception IMPLEMENTATION.
ENDCLASS.