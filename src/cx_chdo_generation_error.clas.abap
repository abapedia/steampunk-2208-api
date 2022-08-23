CLASS cx_chdo_generation_error DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.

    ALIASES msgty
    FOR if_t100_dyn_msg~msgty.
    ALIASES msgv1
    FOR if_t100_dyn_msg~msgv1.
    ALIASES msgv2
    FOR if_t100_dyn_msg~msgv2.
    ALIASES msgv3
    FOR if_t100_dyn_msg~msgv3.
    ALIASES msgv4
    FOR if_t100_dyn_msg~msgv4.
    ALIASES t100key
    FOR if_t100_message~t100key.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !msgty TYPE symsgty OPTIONAL
      !msgv1 TYPE symsgv OPTIONAL
      !msgv2 TYPE symsgv OPTIONAL
      !msgv3 TYPE symsgv OPTIONAL
      !msgv4 TYPE symsgv OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_chdo_generation_error IMPLEMENTATION.
ENDCLASS.