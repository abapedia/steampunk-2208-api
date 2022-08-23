CLASS cx_swf_cpwf_api DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.
    INTERFACES if_t100_dyn_msg.

    CONSTANTS:
    BEGIN OF wrong_callback_class,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE 'ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF wrong_callback_class.
    CONSTANTS:
    BEGIN OF wrong_status,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '010',
        attr1 TYPE scx_attrname VALUE 'ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF wrong_status.
    CONSTANTS:
    BEGIN OF wrong_status_found,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '023',
        attr1 TYPE scx_attrname VALUE 'ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF wrong_status_found.
    CONSTANTS:
    BEGIN OF request_not_found,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '009',
        attr1 TYPE scx_attrname VALUE 'ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF request_not_found.
    CONSTANTS:
    BEGIN OF invalid_bgrfc_destination,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '002',
        attr1 TYPE scx_attrname VALUE 'ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF invalid_bgrfc_destination.
    CONSTANTS:
    BEGIN OF invalid_retention_time,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '003',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF invalid_retention_time.
    CONSTANTS:
    BEGIN OF request_alrdy_locked,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '011',
        attr1 TYPE scx_attrname VALUE 'ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF request_alrdy_locked.
    CONSTANTS:
    BEGIN OF request_lock_failed,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '012',
        attr1 TYPE scx_attrname VALUE 'ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF request_lock_failed.
    CONSTANTS:
    BEGIN OF instance_not_found,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '040',
        attr1 TYPE scx_attrname VALUE 'ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF instance_not_found.
    CONSTANTS:
    BEGIN OF workflow_definitions_fails,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '060',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF workflow_definitions_fails.
    CONSTANTS:
    BEGIN OF http_error,
        msgid TYPE symsgid VALUE 'SWF_CPWF_002',
        msgno TYPE symsgno VALUE '050',
        attr1 TYPE scx_attrname VALUE 'ERROR_CODE',
        attr2 TYPE scx_attrname VALUE 'ERROR_MESSAGE',
        attr3 TYPE scx_attrname VALUE 'ERROR_LOGID',
        attr4 TYPE scx_attrname VALUE '',
      END OF http_error.
    CONSTANTS:
    BEGIN OF start_alrdy_sched,
      msgid TYPE symsgid VALUE 'SWF_CPWF_001',
      msgno TYPE symsgno VALUE '013',
      attr1 TYPE scx_attrname VALUE '',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF start_alrdy_sched.
    CONSTANTS:
    BEGIN OF wrong_operation,
      msgid TYPE symsgid VALUE 'SWF_CPWF_001',
      msgno TYPE symsgno VALUE '014',
      attr1 TYPE scx_attrname VALUE 'ID',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF wrong_operation.
    CONSTANTS:
    BEGIN OF wrong_operation_retry_start,
      msgid TYPE symsgid VALUE 'SWF_CPWF_001',
      msgno TYPE symsgno VALUE '015',
      attr1 TYPE scx_attrname VALUE 'ID',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF wrong_operation_retry_start.
    CONSTANTS:
    BEGIN OF consumer_not_found,
      msgid TYPE symsgid VALUE 'SWF_CPWF_001',
      msgno TYPE symsgno VALUE '016',
      attr1 TYPE scx_attrname VALUE 'ID',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF consumer_not_found.
    CONSTANTS:
    BEGIN OF consumer_invalid,
      msgid TYPE symsgid VALUE 'SWF_CPWF_001',
      msgno TYPE symsgno VALUE '017',
      attr1 TYPE scx_attrname VALUE 'VALID_CONSUMER_TYPE',
      attr2 TYPE scx_attrname VALUE 'ID',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF consumer_invalid.
    CONSTANTS:
    BEGIN OF consumer_empty,
      msgid TYPE symsgid VALUE 'SWF_CPWF_001',
      msgno TYPE symsgno VALUE '018',
      attr1 TYPE scx_attrname VALUE 'ID',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF consumer_empty.
    CONSTANTS:
    BEGIN OF http_error_start,
        msgid TYPE symsgid VALUE 'SWF_CPWF_002',
        msgno TYPE symsgno VALUE '051',
        attr1 TYPE scx_attrname VALUE 'ERROR_CODE',
        attr2 TYPE scx_attrname VALUE 'ERROR_MESSAGE',
        attr3 TYPE scx_attrname VALUE 'ERROR_LOGID',
        attr4 TYPE scx_attrname VALUE 'HTTP_CODE',
      END OF http_error_start.
    CONSTANTS:
    BEGIN OF error_user_tasks,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '070',
        attr1 TYPE scx_attrname VALUE 'ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF error_user_tasks.
    CONSTANTS:
    BEGIN OF error_wf_log,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '071',
        attr1 TYPE scx_attrname VALUE 'ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF error_wf_log.
    CONSTANTS:
    BEGIN OF error_wf_data,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '072',
        attr1 TYPE scx_attrname VALUE 'ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF error_wf_data.
    CONSTANTS:
    BEGIN OF error_wf_context,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '073',
        attr1 TYPE scx_attrname VALUE 'ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF error_wf_context.
    CONSTANTS:
    BEGIN OF error_raising_event,
        msgid TYPE symsgid VALUE 'SWF_CPWF_001',
        msgno TYPE symsgno VALUE '074',
        attr1 TYPE scx_attrname VALUE 'ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF error_raising_event.
    DATA id TYPE string.
    DATA error_code TYPE string.
    DATA error_message TYPE string.
    DATA error_logid TYPE string.
    DATA valid_consumer_type TYPE swf_cpwf_consumer.
    DATA http_code TYPE numc3.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !id TYPE string OPTIONAL
      !error_code TYPE string OPTIONAL
      !error_message TYPE string OPTIONAL
      !error_logid TYPE string OPTIONAL
      !valid_consumer_type TYPE swf_cpwf_consumer OPTIONAL
      !http_code TYPE numc3 OPTIONAL.
    METHODS get_attribute_value
    IMPORTING
      !iv_attr_name TYPE scx_attrname
    RETURNING
      VALUE(rv_attr_value) TYPE string.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_swf_cpwf_api IMPLEMENTATION.
ENDCLASS.