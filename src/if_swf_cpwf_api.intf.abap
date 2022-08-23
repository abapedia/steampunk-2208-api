INTERFACE if_swf_cpwf_api
  PUBLIC.

  INTERFACES if_swf_cpwf_capi.
  TYPES callback_classname TYPE c LENGTH 30.
  TYPES retention_time TYPE i.
  TYPES cpwf_status TYPE c LENGTH 10.
  TYPES cpwf_task_status TYPE c LENGTH 10.
  TYPES cpwf_def_id TYPE c LENGTH 64.
  TYPES cpwf_id TYPE c LENGTH 36.
  TYPES context TYPE xstring.
  TYPES cpwf_handle TYPE swf_cpwf_handle.
  TYPES cpwf_evt_def_id TYPE c LENGTH 64.
  TYPES cpwf_log_type TYPE c LENGTH 50.
  TYPES:
    BEGIN OF uppercase_word.
  TYPES   substring TYPE string.
  TYPES END OF uppercase_word.
  TYPES:
    uppercase_words TYPE STANDARD TABLE OF uppercase_word WITH DEFAULT KEY.
  TYPES:
    BEGIN OF name_mapping.
  TYPES   abap TYPE abap_compname.
  TYPES   json TYPE string.
  TYPES END OF name_mapping.
  TYPES:
    name_mappings TYPE HASHED TABLE OF name_mapping WITH UNIQUE KEY abap.
  TYPES:
    BEGIN OF user_task_instance.
  TYPES   id TYPE string.
  TYPES   activity_id TYPE string.
  TYPES   subject TYPE string.
  TYPES   last_changed_at TYPE timestampl.
  TYPES   status TYPE cpwf_task_status.
  TYPES   recipient_users TYPE stringtab.
  TYPES   recipient_groups TYPE stringtab.
  TYPES   processor TYPE string.
  TYPES   due_date TYPE timestampl.
  TYPES END OF user_task_instance.
  TYPES:
    user_task_instances TYPE TABLE OF user_task_instance WITH DEFAULT KEY.
  TYPES:
    BEGIN OF workflow_definition.
  TYPES id TYPE string.
  TYPES name TYPE string.
  TYPES version TYPE i.
  TYPES created_by TYPE string.
  TYPES created_at TYPE p LENGTH 21 DECIMALS 0.

  TYPES END OF workflow_definition.
  TYPES:
    workflow_definitions TYPE TABLE OF workflow_definition WITH DEFAULT KEY.
  TYPES:
    BEGIN OF workflow_log_error,
      code    TYPE c LENGTH 1024,
      message TYPE c LENGTH 1024,
      logid   TYPE c LENGTH 1024,
    END OF workflow_log_error.
  TYPES:
    workflow_log_errors TYPE STANDARD TABLE OF workflow_log_error WITH DEFAULT KEY.
  TYPES:
    BEGIN OF workflow_log,
      id                    TYPE string,
      type                  TYPE cpwf_log_type,
      timestamp             TYPE timestampl,
      reference_instance_id TYPE string,
      activity_id           TYPE string,
      subject               TYPE string,
      user_id               TYPE string,
      error                 TYPE workflow_log_errors,
      initiator_id          TYPE string,
      retries_remaining     TYPE int4,
      task_id               TYPE string,
      recipient_users       TYPE stringtab,
      recipient_groups      TYPE stringtab,
    END OF workflow_log.
  TYPES:
    workflow_logs TYPE STANDARD TABLE OF workflow_log WITH KEY reference_instance_id.

  CONSTANTS:
    BEGIN OF c_cpwf_status,
      scheduled TYPE cpwf_status VALUE 'SCHEDULED',
      running   TYPE cpwf_status VALUE 'RUNNING',
      completed TYPE cpwf_status VALUE 'COMPLETED',
      canceled  TYPE cpwf_status VALUE 'CANCELED',
      suspended TYPE cpwf_status VALUE 'SUSPENDED',
      erroneous TYPE cpwf_status VALUE 'ERRONEOUS',
    END OF c_cpwf_status.
  CONSTANTS:
    BEGIN OF c_cpwf_task_status,
      ready     TYPE cpwf_task_status VALUE 'READY',
      reserved  TYPE cpwf_task_status VALUE 'RESERVED',
      completed TYPE cpwf_task_status VALUE 'COMPLETED',
      canceled  TYPE cpwf_task_status VALUE 'CANCELED',
    END OF c_cpwf_task_status.
  CONSTANTS:
    BEGIN OF c_cpwf_log_type,
      workflow_started              TYPE cpwf_log_type VALUE 'WORKFLOW_STARTED',
      workflow_completed            TYPE cpwf_log_type VALUE 'WORKFLOW_COMPLETED',
      workflow_canceled             TYPE cpwf_log_type VALUE 'WORKFLOW_CANCELED',
      workflow_continued            TYPE cpwf_log_type VALUE 'WORKFLOW_CONTINUED',
      workflow_suspended            TYPE cpwf_log_type VALUE 'WORKFLOW_SUSPENDED',
      workflow_ctxt_admin_overwrite TYPE cpwf_log_type VALUE 'WORKFLOW_CONTEXT_OVERWRITTEN_BY_ADMIN',
      workflow_ctxt_admin_patched   TYPE cpwf_log_type VALUE 'WORKFLOW_CONTEXT_PATCHED_BY_ADMIN',
      workflow_resumed              TYPE cpwf_log_type VALUE 'WORKFLOW_RESUMED',
      usertask_created              TYPE cpwf_log_type VALUE 'USERTASK_CREATED',
      usertask_claimed              TYPE cpwf_log_type VALUE 'USERTASK_CLAIMED',
      usertask_released             TYPE cpwf_log_type VALUE 'USERTASK_RELEASED',
      usertask_completed            TYPE cpwf_log_type VALUE 'USERTASK_COMPLETED',
      usertask_failed               TYPE cpwf_log_type VALUE 'USERTASK_FAILED',
      usertask_admin_patched        TYPE cpwf_log_type VALUE 'USERTASK_PATCHED_BY_ADMIN',
      usertask_canceled_bndevent    TYPE cpwf_log_type VALUE 'USERTASK_CANCELED_BY_BOUNDARY_EVENT',
      servicetask_created           TYPE cpwf_log_type VALUE 'SERVICETASK_CREATED',
      servicetask_completed         TYPE cpwf_log_type VALUE 'SERVICETASK_COMPLETED',
      servicetask_failed            TYPE cpwf_log_type VALUE 'SERVICETASK_FAILED',
      scripttask_created            TYPE cpwf_log_type VALUE 'SCRIPTTASK_CREATED',
      scripttask_completed          TYPE cpwf_log_type VALUE 'SCRIPTTASK_COMPLETED',
      scripttask_failed             TYPE cpwf_log_type VALUE 'SCRIPTTASK_FAILED',
      intermediatetimer_reached     TYPE cpwf_log_type VALUE 'INTERMEDIATE_TIMER_EVENT_REACHED',
      intermediatetimer_triggered   TYPE cpwf_log_type VALUE 'INTERMEDIATE_TIMER_EVENT_TRIGGERED',
      intermediatemsg_reached       TYPE cpwf_log_type VALUE 'INTERMEDIATE_MESSAGE_EVENT_REACHED',
      intermediatemsg_triggered     TYPE cpwf_log_type VALUE 'INTERMEDIATE_MESSAGE_EVENT_TRIGGERED',
      noncancel_bndtimer_triggered  TYPE cpwf_log_type VALUE 'NONCANCELING_BOUNDARY_TIMER_EVENT_TRIGGERED',
      cancel_bndtimer_triggered     TYPE cpwf_log_type VALUE 'CANCELING_BOUNDARY_TIMER_EVENT_TRIGGERED',
      mailtask_created              TYPE cpwf_log_type VALUE 'MAILTASK_CREATED',
      mailtask_completed            TYPE cpwf_log_type VALUE 'MAILTASK_COMPLETED',
      mailtask_failed               TYPE cpwf_log_type VALUE 'MAILTASK_FAILED',
    END OF c_cpwf_log_type.
  CONSTANTS cv_consumer_type_default TYPE swf_cpwf_consumer VALUE 'DEFAULT' ##NO_TEXT.
  CLASS-METHODS get_start_context_from_data
    IMPORTING
      !iv_data TYPE data
      !it_name_mapping TYPE name_mappings OPTIONAL
      !iv_camel_case TYPE abap_bool DEFAULT abap_true
      !iv_capital_letter TYPE abap_bool DEFAULT abap_true
      !it_uppercase_word TYPE uppercase_words OPTIONAL
      !iv_suppress_empty_components TYPE abap_bool DEFAULT abap_true
    RETURNING
      VALUE(rv_context) TYPE context
    RAISING
      cx_swf_cpwf_api.
  CLASS-METHODS get_context_from_data
    IMPORTING
      !iv_data TYPE data
      !it_name_mapping TYPE name_mappings OPTIONAL
      !iv_camel_case TYPE abap_bool DEFAULT abap_true
      !iv_capital_letter TYPE abap_bool DEFAULT abap_true
      !it_uppercase_word TYPE uppercase_words OPTIONAL
      !iv_suppress_empty_components TYPE abap_bool DEFAULT abap_true
    RETURNING
      VALUE(rv_context) TYPE context
    RAISING
      cx_swf_cpwf_api.
  CLASS-METHODS get_context_data_from_json
    IMPORTING
      !iv_context TYPE context
      !it_name_mapping TYPE name_mappings OPTIONAL
      !iv_camel_case TYPE abap_bool DEFAULT abap_true
      !iv_capital_letter TYPE abap_bool DEFAULT abap_true
      !it_uppercase_word TYPE uppercase_words OPTIONAL
    EXPORTING
      !ev_data TYPE data
    RAISING
      cx_swf_cpwf_api.
  METHODS start_workflow
    IMPORTING
      !iv_cp_workflow_def_id TYPE cpwf_def_id
      !iv_context TYPE context OPTIONAL
      !iv_retention_time TYPE retention_time
      !iv_callback_class TYPE callback_classname OPTIONAL
      !iv_do_commit TYPE abap_bool DEFAULT abap_false
    RETURNING
      VALUE(rv_cpwf_handle) TYPE cpwf_handle
    RAISING
      cx_swf_cpwf_api.
  METHODS register_workflow
    IMPORTING
      !iv_cp_workflow_inst_id TYPE cpwf_id
      !iv_retention_time TYPE retention_time
      !iv_callback_class TYPE callback_classname OPTIONAL
      !iv_do_commit TYPE abap_bool DEFAULT abap_false
    EXPORTING
      !ev_cpwf_handle TYPE cpwf_handle
      !ev_cpwf_status TYPE cpwf_status
    RAISING
      cx_swf_cpwf_api.
  METHODS cancel_workflow
    IMPORTING
      !iv_cpwf_handle TYPE cpwf_handle
      !iv_do_commit TYPE abap_bool DEFAULT abap_false
    RAISING
      cx_swf_cpwf_api.
  METHODS get_workflow_status
    IMPORTING
      !iv_cpwf_handle TYPE cpwf_handle
    RETURNING
      VALUE(rv_status) TYPE cpwf_status
    RAISING
      cx_swf_cpwf_api.
  METHODS get_workflow_log
    IMPORTING
      !iv_cpwf_handle TYPE cpwf_handle
    RETURNING
      VALUE(rt_log) TYPE workflow_logs
    RAISING
      cx_swf_cpwf_api.
  METHODS get_workflow_context
    IMPORTING
      !iv_cpwf_handle TYPE cpwf_handle
    RETURNING
      VALUE(rv_context) TYPE context
    RAISING
      cx_swf_cpwf_api.
  METHODS get_user_task_instances
    IMPORTING
      !iv_cpwf_handle TYPE cpwf_handle
    RETURNING
      VALUE(rt_user_task_instance) TYPE user_task_instances
    RAISING
      cx_swf_cpwf_api.
  METHODS get_workflow_definitions
    RETURNING
      VALUE(rt_workflow_definition) TYPE workflow_definitions
    RAISING
      cx_swf_cpwf_api.
  METHODS raise_event
    IMPORTING
      !iv_cpwf_handle TYPE cpwf_handle
      !iv_event_def_id TYPE cpwf_evt_def_id
      !iv_event_context TYPE context
      !iv_do_commit TYPE abap_bool DEFAULT abap_false
    RAISING
      cx_swf_cpwf_api.
  METHODS get_json_converter
    IMPORTING
      !it_name_mapping TYPE name_mappings OPTIONAL
      !iv_camel_case TYPE abap_bool DEFAULT abap_true
      !iv_capital_letter TYPE abap_bool DEFAULT abap_true
      !it_uppercase_word TYPE uppercase_words OPTIONAL
      !iv_suppress_empty_components TYPE abap_bool DEFAULT abap_true
      !iv_uppercase TYPE abap_bool DEFAULT abap_false
    RETURNING
      VALUE(ro_json_converter) TYPE REF TO if_swf_cp_json.
ENDINTERFACE.