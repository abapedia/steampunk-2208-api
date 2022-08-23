CLASS cx_ble_dynamic_table_error DEFINITION
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
    BEGIN OF length_missing,
      msgid TYPE symsgid VALUE 'BLE_RUNTIME_SUPPORT',
      msgno TYPE symsgno VALUE '002',
      attr1 TYPE scx_attrname VALUE 'TYPE',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF length_missing.
    CONSTANTS:
    BEGIN OF length_or_decimals_missing,
      msgid TYPE symsgid VALUE 'BLE_RUNTIME_SUPPORT',
      msgno TYPE symsgno VALUE '003',
      attr1 TYPE scx_attrname VALUE 'TYPE',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF length_or_decimals_missing.
    CONSTANTS:
    BEGIN OF unsupported_type,
      msgid TYPE symsgid VALUE 'BLE_RUNTIME_SUPPORT',
      msgno TYPE symsgno VALUE '001',
      attr1 TYPE scx_attrname VALUE 'TYPE',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF unsupported_type.
    CONSTANTS:
    BEGIN OF row_deleted,
      msgid TYPE symsgid VALUE 'BLE_RUNTIME_SUPPORT',
      msgno TYPE symsgno VALUE '004',
      attr1 TYPE scx_attrname VALUE 'ROW',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF row_deleted.
    CONSTANTS:
    BEGIN OF iteration_in_progress,
      msgid TYPE symsgid VALUE 'BLE_RUNTIME_SUPPORT',
      msgno TYPE symsgno VALUE '007',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF iteration_in_progress.
    CONSTANTS:
    BEGIN OF no_current_row,
      msgid TYPE symsgid VALUE 'BLE_RUNTIME_SUPPORT',
      msgno TYPE symsgno VALUE '006',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF no_current_row.
    CONSTANTS:
    BEGIN OF at_last_row,
      msgid TYPE symsgid VALUE 'BLE_RUNTIME_SUPPORT',
      msgno TYPE symsgno VALUE '005',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF at_last_row.
    CONSTANTS:
    BEGIN OF column_exists,
      msgid TYPE symsgid VALUE 'BLE_RUNTIME_SUPPORT',
      msgno TYPE symsgno VALUE '008',
      attr1 TYPE scx_attrname VALUE 'COLUMN',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF column_exists.
    CONSTANTS:
    BEGIN OF no_columns,
      msgid TYPE symsgid VALUE 'BLE_RUNTIME_SUPPORT',
      msgno TYPE symsgno VALUE '009',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF no_columns.
    DATA row TYPE i.
    DATA type TYPE string.
    DATA column TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !row TYPE i OPTIONAL
      !type TYPE string OPTIONAL
      !column TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_ble_dynamic_table_error IMPLEMENTATION.
ENDCLASS.