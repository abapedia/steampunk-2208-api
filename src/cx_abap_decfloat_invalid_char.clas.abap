CLASS cx_abap_decfloat_invalid_char DEFINITION
  PUBLIC
  INHERITING FROM cx_abap_decfloat_parse_err
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS:
    BEGIN OF invalid_character,
      msgid TYPE symsgid VALUE 'ABAP_DECFLOAT',
      msgno TYPE symsgno VALUE '002',
      attr1 TYPE scx_attrname VALUE 'INVALID_CHAR',
      attr2 TYPE scx_attrname VALUE 'INPUT',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF invalid_character.
    CONSTANTS:
    BEGIN OF invalid_position,
      msgid TYPE symsgid VALUE 'ABAP_DECFLOAT',
      msgno TYPE symsgno VALUE '003',
      attr1 TYPE scx_attrname VALUE 'INVALID_CHAR',
      attr2 TYPE scx_attrname VALUE 'INPUT',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF invalid_position.
    CONSTANTS:
    BEGIN OF cx_abap_decfloat_invalid_char,
      msgid TYPE symsgid VALUE 'ABAP_DECFLOAT',
      msgno TYPE symsgno VALUE '001',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_abap_decfloat_invalid_char.
    DATA invalid_char TYPE sychar01.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !input TYPE string OPTIONAL
      !invalid_char TYPE sychar01 OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_decfloat_invalid_char IMPLEMENTATION.
ENDCLASS.