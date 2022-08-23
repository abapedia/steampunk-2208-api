CLASS cx_abap_timefm_invalid DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.

    CONSTANTS:
    BEGIN OF cx_abap_timefm_invalid,
      msgid TYPE symsgid VALUE 'ABAP_TIMEFM',
      msgno TYPE symsgno VALUE '001',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_abap_timefm_invalid.
    CONSTANTS:
    BEGIN OF no_24_allowed,
      msgid TYPE symsgid VALUE 'ABAP_TIMEFM',
      msgno TYPE symsgno VALUE '002',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF no_24_allowed.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_timefm_invalid IMPLEMENTATION.
ENDCLASS.