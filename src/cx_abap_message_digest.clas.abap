CLASS cx_abap_message_digest DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.

    CONSTANTS:
    BEGIN OF unknown_algorithm,
      msgid TYPE symsgid VALUE 'MD5',
      msgno TYPE symsgno VALUE '004',
      attr1 TYPE scx_attrname VALUE 'ALGORITHM',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF unknown_algorithm.
    CONSTANTS:
    BEGIN OF param_error,
      msgid TYPE symsgid VALUE 'MD5',
      msgno TYPE symsgno VALUE '005',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF param_error.
    CONSTANTS:
    BEGIN OF no_memory,
      msgid TYPE symsgid VALUE 'MD5',
      msgno TYPE symsgno VALUE '007',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF no_memory.
    CONSTANTS:
    BEGIN OF kernel_outdated,
      msgid TYPE symsgid VALUE 'MD5',
      msgno TYPE symsgno VALUE '008',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF kernel_outdated.
    CONSTANTS:
    BEGIN OF base64_error,
      msgid TYPE symsgid VALUE 'MD5',
      msgno TYPE symsgno VALUE '009',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF base64_error.
    CONSTANTS:
    BEGIN OF internal_error,
      msgid TYPE symsgid VALUE 'MD5',
      msgno TYPE symsgno VALUE '003',
      attr1 TYPE scx_attrname VALUE 'ALGORITHM',
      attr2 TYPE scx_attrname VALUE 'RC',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF internal_error.
    CONSTANTS:
    BEGIN OF conv_error,
      msgid TYPE symsgid VALUE 'MD5',
      msgno TYPE symsgno VALUE '021',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF conv_error.
    CONSTANTS:
    BEGIN OF key_error,
      msgid TYPE symsgid VALUE 'MD5',
      msgno TYPE symsgno VALUE '001',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF key_error.
    DATA algorithm TYPE string.
    DATA rc TYPE i VALUE 0. "#EC NOTEXT .

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !algorithm TYPE string OPTIONAL
      !rc TYPE i DEFAULT 0.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_message_digest IMPLEMENTATION.
ENDCLASS.