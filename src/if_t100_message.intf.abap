
INTERFACE if_t100_message
  PUBLIC.

  INTERFACES if_message.

  CONSTANTS:
    BEGIN OF default_textid,
      msgid TYPE symsgid VALUE 'SY',
      msgno TYPE symsgno VALUE '530',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF default_textid.

  DATA t100key TYPE scx_t100key.
ENDINTERFACE.