CLASS cx_abap_range_conv DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.
    INTERFACES if_t100_dyn_msg.

    CONSTANTS:
    BEGIN OF expression_not_supported,
      msgid TYPE symsgid VALUE 'SABPRANGES',
      msgno TYPE symsgno VALUE '001',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF expression_not_supported.
    CONSTANTS:
    BEGIN OF incorrect_expression,
      msgid TYPE symsgid VALUE 'SABPRANGES',
      msgno TYPE symsgno VALUE '002',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF incorrect_expression.
    CONSTANTS:
    BEGIN OF internal_error,
      msgid TYPE symsgid VALUE 'SABPRANGES',
      msgno TYPE symsgno VALUE '003',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF internal_error.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_range_conv IMPLEMENTATION.
ENDCLASS.