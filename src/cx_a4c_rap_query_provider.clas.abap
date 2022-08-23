CLASS cx_a4c_rap_query_provider DEFINITION
  PUBLIC
  INHERITING FROM cx_rap_query_provider
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL.

    CONSTANTS:
      BEGIN OF cx_a4c_rap_query_provider,
        msgid TYPE symsgid VALUE 'A4C_UTIL',
        msgno TYPE symsgno VALUE '012',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF cx_a4c_rap_query_provider.

  PROTECTED SECTION.
ENDCLASS.

CLASS cx_a4c_rap_query_provider IMPLEMENTATION.
ENDCLASS.