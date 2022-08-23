CLASS cx_ftd_invalid_state DEFINITION PUBLIC FINAL CREATE PUBLIC INHERITING FROM cx_no_check.

  PUBLIC SECTION.
    INTERFACES if_t100_message.

    CONSTANTS:
      BEGIN OF invalid_configuration_chain,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '009',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF invalid_configuration_chain.

    METHODS constructor
      IMPORTING
        textid    LIKE if_t100_message=>t100key OPTIONAL
        previous  LIKE previous                 OPTIONAL.

ENDCLASS.

CLASS cx_ftd_invalid_state IMPLEMENTATION.
ENDCLASS.