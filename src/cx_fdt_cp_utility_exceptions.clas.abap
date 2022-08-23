CLASS cx_fdt_cp_utility_exceptions DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.

    CONSTANTS:
   BEGIN OF error_message,
      msgid TYPE symsgid VALUE 'FDT_CP_MSG',
      msgno TYPE symsgno VALUE '227',
      attr1 TYPE scx_attrname VALUE 'MESSAGE',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF error_message.
    DATA message TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !message TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_fdt_cp_utility_exceptions IMPLEMENTATION.
ENDCLASS.