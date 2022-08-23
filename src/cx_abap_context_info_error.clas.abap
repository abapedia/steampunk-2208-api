CLASS cx_abap_context_info_error DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.

    CONSTANTS:
    BEGIN OF internal_error,
      msgid TYPE symsgid VALUE 'BLE_RUNTIME_SUPPORT',
      msgno TYPE symsgno VALUE '000',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF internal_error.
    CONSTANTS:
    BEGIN OF invalid_username,
      msgid TYPE symsgid VALUE 'BLE_RUNTIME_SUPPORT',
      msgno TYPE symsgno VALUE '101',
      attr1 TYPE scx_attrname VALUE 'USERNAME',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF invalid_username.
    CONSTANTS:
    BEGIN OF missing_data,
      msgid TYPE symsgid VALUE 'BLE_RUNTIME_SUPPORT',
      msgno TYPE symsgno VALUE '102',
      attr1 TYPE scx_attrname VALUE 'USERNAME',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF missing_data.
    DATA username TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !username TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_context_info_error IMPLEMENTATION.
ENDCLASS.