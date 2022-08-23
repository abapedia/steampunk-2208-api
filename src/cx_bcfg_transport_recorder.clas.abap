CLASS cx_bcfg_transport_recorder DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.

    CONSTANTS:
    BEGIN OF invalid_customizing_object,
      msgid TYPE symsgid VALUE 'S_BCFG_REUSE',
      msgno TYPE symsgno VALUE '002',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF invalid_customizing_object.
    CONSTANTS:
    BEGIN OF error_raised,
      msgid TYPE symsgid VALUE 'S_BCFG_REUSE',
      msgno TYPE symsgno VALUE '005',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF error_raised.
    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_bcfg_transport_recorder IMPLEMENTATION.
ENDCLASS.