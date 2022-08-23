CLASS cx_abap_utclong_invalid DEFINITION
  PUBLIC
  INHERITING FROM cx_abap_datfm
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.

    CONSTANTS:
    BEGIN OF cx_abap_utclong_invalid,
      msgid TYPE symsgid VALUE 'SABP_DATETIME',
      msgno TYPE symsgno VALUE '000',
      attr1 TYPE scx_attrname VALUE 'VALID_EXAMPLE',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_abap_utclong_invalid.
    CONSTANTS:
    BEGIN OF invalid_date,
      msgid TYPE symsgid VALUE 'SABP_DATETIME',
      msgno TYPE symsgno VALUE '001',
      attr1 TYPE scx_attrname VALUE 'VALID_EXAMPLE',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF invalid_date.
    CONSTANTS:
    BEGIN OF invalid_time,
      msgid TYPE symsgid VALUE 'SABP_DATETIME',
      msgno TYPE symsgno VALUE '002',
      attr1 TYPE scx_attrname VALUE 'VALID_EXAMPLE',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF invalid_time.
    CONSTANTS:
    BEGIN OF max_7_decimal_places,
      msgid TYPE symsgid VALUE 'SABP_DATETIME',
      msgno TYPE symsgno VALUE '003',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF max_7_decimal_places.
    DATA valid_example TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !valid_example TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_utclong_invalid IMPLEMENTATION.
ENDCLASS.