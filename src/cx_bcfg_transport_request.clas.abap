CLASS cx_bcfg_transport_request DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.

    CONSTANTS:
    BEGIN OF cts_factory_error,
        msgid TYPE symsgid VALUE 'SV',
        msgno TYPE symsgno VALUE '205',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF cts_factory_error.
    CONSTANTS:
    BEGIN OF multiple_transports,
        msgid TYPE symsgid VALUE 'SV',
        msgno TYPE symsgno VALUE '204',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF multiple_transports.
    CONSTANTS:
    BEGIN OF no_open_transport,
      msgid TYPE symsgid VALUE 'SV',
      msgno TYPE symsgno VALUE '207',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF no_open_transport.
    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_bcfg_transport_request IMPLEMENTATION.
ENDCLASS.