CLASS cx_abap_decfloat_parse_err DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.

    CONSTANTS:
    BEGIN OF cx_abap_decfloat_parse_err,
      msgid TYPE symsgid VALUE 'ABAP_DECFLOAT',
      msgno TYPE symsgno VALUE '000',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_abap_decfloat_parse_err.
    CONSTANTS:
    BEGIN OF incomplete_exponent,
      msgid TYPE symsgid VALUE 'ABAP_DECFLOAT',
      msgno TYPE symsgno VALUE '004',
      attr1 TYPE scx_attrname VALUE 'INPUT',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF incomplete_exponent.
    CONSTANTS:
    BEGIN OF sign_behind_exponent,
      msgid TYPE symsgid VALUE 'ABAP_DECFLOAT',
      msgno TYPE symsgno VALUE '005',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF sign_behind_exponent.
    CONSTANTS:
    BEGIN OF invalid_syntax,
      msgid TYPE symsgid VALUE 'ABAP_DECFLOAT',
      msgno TYPE symsgno VALUE '006',
      attr1 TYPE scx_attrname VALUE 'INPUT',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF invalid_syntax.
    CONSTANTS:
    BEGIN OF too_many_decimal_places,
      msgid TYPE symsgid VALUE 'ABAP_DECFLOAT',
      msgno TYPE symsgno VALUE '009',
      attr1 TYPE scx_attrname VALUE 'INPUT',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF too_many_decimal_places.
    DATA input TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !input TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_decfloat_parse_err IMPLEMENTATION.
ENDCLASS.