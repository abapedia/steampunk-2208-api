CLASS cx_rfc_dest_provider_error DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.

    CONSTANTS:
    BEGIN OF unknown_destination,
      msgid TYPE symsgid VALUE 'S_UNIFIED_CON_COMMON',
      msgno TYPE symsgno VALUE '001',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF unknown_destination.
    CONSTANTS:
    BEGIN OF unsupported,
      msgid TYPE symsgid VALUE 'S_UNIFIED_CON_COMMON',
      msgno TYPE symsgno VALUE '002',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF unsupported.
    CONSTANTS:
    BEGIN OF dyn_creation_error,
      msgid TYPE symsgid VALUE 'S_UNIFIED_CON_COMMON',
      msgno TYPE symsgno VALUE '003',
      attr1 TYPE scx_attrname VALUE 'RETURN_CODE',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF dyn_creation_error.
    CONSTANTS:
    BEGIN OF service_id_invalid,
      msgid TYPE symsgid VALUE 'S_UNIFIED_CON_COMMON',
      msgno TYPE symsgno VALUE '005',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF service_id_invalid.
    CONSTANTS:
    BEGIN OF dest_info_invalid,
      msgid TYPE symsgid VALUE 'S_UNIFIED_CON_COMMON',
      msgno TYPE symsgno VALUE '006',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF dest_info_invalid.
    CONSTANTS:
    BEGIN OF internal_failure,
      msgid TYPE symsgid VALUE 'S_UNIFIED_CON_COMMON',
      msgno TYPE symsgno VALUE '007',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF internal_failure.
    CONSTANTS:
    BEGIN OF dest_already_existing,
      msgid TYPE symsgid VALUE 'S_UNIFIED_CON_COMMON',
      msgno TYPE symsgno VALUE '008',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF dest_already_existing.
    CONSTANTS:
    BEGIN OF rfc_ping_failed,
      msgid TYPE symsgid VALUE 'S_UNIFIED_CON_COMMON',
      msgno TYPE symsgno VALUE '009',
      attr1 TYPE scx_attrname VALUE 'MESSAGE',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF rfc_ping_failed.
    CONSTANTS:
    BEGIN OF rfcping_failed,
      msgid TYPE symsgid VALUE 'S_UNIFIED_CON_COMMON',
      msgno TYPE symsgno VALUE '010',
      attr1 TYPE scx_attrname VALUE 'MESSAGE',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF rfcping_failed.
    CONSTANTS:
    BEGIN OF type_mismatch,
      msgid TYPE symsgid VALUE 'S_UNIFIED_CON_COMMON',
      msgno TYPE symsgno VALUE '011',
      attr1 TYPE scx_attrname VALUE 'ACTUAL_TYPE',
      attr2 TYPE scx_attrname VALUE 'REQUIRED_TYPE',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF type_mismatch.
    CONSTANTS:
    BEGIN OF connection_failed,
      msgid TYPE symsgid VALUE 'S_UNIFIED_CON_COMMON',
      msgno TYPE symsgno VALUE '012',
      attr1 TYPE scx_attrname VALUE 'MESSAGE',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF connection_failed.
    CONSTANTS:
    BEGIN OF authentication_failed,
      msgid TYPE symsgid VALUE 'S_UNIFIED_CON_COMMON',
      msgno TYPE symsgno VALUE '013',
      attr1 TYPE scx_attrname VALUE 'MESSAGE',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF authentication_failed.
    DATA: return_code TYPE int4,
        actual_type TYPE char1,
        required_type TYPE char1,
        message TYPE char255.

    METHODS: constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !return_code TYPE int4 OPTIONAL
      !message TYPE char255 OPTIONAL
      !actual_type TYPE char1 OPTIONAL
      !required_type TYPE char1 OPTIONAL,

    get_id
        RETURNING
        VALUE(rv_textid) LIKE if_t100_message=>t100key.

  PROTECTED SECTION.
ENDCLASS.

CLASS cx_rfc_dest_provider_error IMPLEMENTATION.
ENDCLASS.