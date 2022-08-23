CLASS cx_apj_dt_content DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.
    INTERFACES if_t100_dyn_msg.

    CONSTANTS:
    BEGIN OF cx_no_authority,
      msgid TYPE symsgid VALUE 'BT',
      msgno TYPE symsgno VALUE '791',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_no_authority.
    CONSTANTS:
    BEGIN OF cx_catalog_doesnt_exist,
      msgid TYPE symsgid VALUE 'APJ_DT',
      msgno TYPE symsgno VALUE '016',
      attr1 TYPE scx_attrname VALUE 'OBJECT',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_catalog_doesnt_exist.
    CONSTANTS:
    BEGIN OF cx_obj_must_not_be_used,
      msgid TYPE symsgid VALUE 'APJ_DT',
      msgno TYPE symsgno VALUE '090',
      attr1 TYPE scx_attrname VALUE 'OBJECT',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_obj_must_not_be_used.
    CONSTANTS:
    BEGIN OF cx_catalog_not_in_scope,
      msgid TYPE symsgid VALUE 'APJ_DT',
      msgno TYPE symsgno VALUE '105',
      attr1 TYPE scx_attrname VALUE 'OBJECT',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_catalog_not_in_scope.
    CONSTANTS:
    BEGIN OF cx_param_error,
      msgid TYPE symsgid VALUE 'APJ_DT',
      msgno TYPE symsgno VALUE '108',
      attr1 TYPE scx_attrname VALUE 'OBJECT',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_param_error.

    CONSTANTS:
    BEGIN OF cx_error_in_saving,
      msgid TYPE symsgid VALUE 'BTCH',
      msgno TYPE symsgno VALUE '071',
      attr1 TYPE scx_attrname VALUE 'OBJECT',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_error_in_saving.
    DATA:
    object TYPE c LENGTH 40.
    DATA:
    object_type TYPE c LENGTH 30.
    CONSTANTS:
    BEGIN OF cx_class_invalid,
      msgid TYPE symsgid VALUE 'APJ_DT',
      msgno TYPE symsgno VALUE '086',
      attr1 TYPE scx_attrname VALUE 'CLASS_NAME',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_class_invalid.
    CONSTANTS:
    BEGIN OF cx_class_not_whitelisted,
      msgid TYPE symsgid VALUE 'APJ_DT',
      msgno TYPE symsgno VALUE '082',
      attr1 TYPE scx_attrname VALUE 'CLASS_NAME',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_class_not_whitelisted.
    DATA:
    class_name TYPE c LENGTH 30.
    CONSTANTS:
    BEGIN OF cx_catalog_length,
      msgid TYPE symsgid VALUE 'APJ_DT',
      msgno TYPE symsgno VALUE '085',
      attr1 TYPE scx_attrname VALUE 'OBJECT',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_catalog_length.
    CONSTANTS:
    BEGIN OF cx_invalid_parameter,
      msgid TYPE symsgid VALUE 'APJ_DT',
      msgno TYPE symsgno VALUE '008',
      attr1 TYPE scx_attrname VALUE 'OBJECT',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_invalid_parameter.
    CONSTANTS:
    BEGIN OF cx_object_already_exists,
      msgid TYPE symsgid VALUE 'APJ_DT',
      msgno TYPE symsgno VALUE '015',
      attr1 TYPE scx_attrname VALUE 'OBJECT',
      attr2 TYPE scx_attrname VALUE 'OBJECT_TYPE',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_object_already_exists.
    CONSTANTS:
    BEGIN OF cx_object_doesnt_exist,
      msgid TYPE symsgid VALUE 'APJ_DT',
      msgno TYPE symsgno VALUE '013',
      attr1 TYPE scx_attrname VALUE 'OBJECT',
      attr2 TYPE scx_attrname VALUE 'OBJECT_TYPE',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_object_doesnt_exist.
    CONSTANTS:
    BEGIN OF cx_no_auth_language_version,
      msgid TYPE symsgid VALUE 'APJ_DT',
      msgno TYPE symsgno VALUE '103',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_no_auth_language_version.
    CONSTANTS:
    BEGIN OF cx_parameter_length,
      msgid TYPE symsgid VALUE 'APJ_DT',
      msgno TYPE symsgno VALUE '091',
      attr1 TYPE scx_attrname VALUE 'OBJECT',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_parameter_length.
    CONSTANTS:
    BEGIN OF cx_del_failed_due_to_rel_jobs,
      msgid TYPE symsgid VALUE 'APJ_DT',
      msgno TYPE symsgno VALUE '093',
      attr1 TYPE scx_attrname VALUE 'OBJECT',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_del_failed_due_to_rel_jobs.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !object LIKE object OPTIONAL
      !object_type LIKE object_type OPTIONAL
      !class_name LIKE class_name OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_apj_dt_content IMPLEMENTATION.
ENDCLASS.