CLASS cx_abap_decfloat_parse_fatal DEFINITION
  PUBLIC
  INHERITING FROM cx_no_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.

    CONSTANTS:
    BEGIN OF cx_abap_decfloat_parse_fatal,
      msgid TYPE symsgid VALUE 'ABAP_DECFLOAT',
      msgno TYPE symsgno VALUE '000',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_abap_decfloat_parse_fatal.
    CONSTANTS:
    BEGIN OF no_memory,
      msgid TYPE symsgid VALUE 'ABAP_DECFLOAT',
      msgno TYPE symsgno VALUE '007',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF no_memory.
    CONSTANTS:
    BEGIN OF internal_error,
      msgid TYPE symsgid VALUE 'ABAP_DECFLOAT',
      msgno TYPE symsgno VALUE '008',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF internal_error.
    CONSTANTS:
    BEGIN OF no_currkey,
      msgid TYPE symsgid VALUE 'ABAP_DECFLOAT',
      msgno TYPE symsgno VALUE '010',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF no_currkey.
    DATA input TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !input TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_decfloat_parse_fatal IMPLEMENTATION.
ENDCLASS.