CLASS /iwbep/cx_gateway DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.

    TYPES:
      BEGIN OF ty_message_info,
        class  TYPE symsgid,                       " Message Class
        number TYPE symsgno.                       " Message Number

    TYPES END OF ty_message_info.

    TYPES:
      ty_t_message_target   TYPE STANDARD TABLE OF string WITH DEFAULT KEY,
      ty_exception_category TYPE char30,
      ty_http_status_code   TYPE numc3,
      ty_sap_note_id        TYPE n LENGTH 10.

    CONSTANTS:
      BEGIN OF gcs_default_text,
        msgid              TYPE string VALUE '/IWBEP/CM_V4S_RUN',
        msgno_provider     TYPE i VALUE 0,
        msgno_framework    TYPE i VALUE 1,
        msgno_strict_check TYPE i VALUE 28,
      END OF gcs_default_text.

    " This exception text cannot be moved to /iwbep/cx_v4_runtime since application is using it
    CONSTANTS:
      BEGIN OF invalid_skiptoken,
        msgid TYPE symsgid VALUE '/IWBEP/CM_V4S_RUN',
        msgno TYPE symsgno VALUE '080',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF invalid_skiptoken.
    " This exception text cannot be moved to /iwbep/cx_v4_runtime since application is using it
    CONSTANTS:
      BEGIN OF set_skiptoken_forbidden,
        msgid TYPE symsgid VALUE '/IWBEP/CM_V4S_RUN',
        msgno TYPE symsgno VALUE '079',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF set_skiptoken_forbidden.

    CONSTANTS:
      BEGIN OF gcs_excep_categories,
        authorization            TYPE ty_exception_category VALUE 'Authorization_Error',
        client                   TYPE ty_exception_category VALUE 'Client_Error',
        configuration            TYPE ty_exception_category VALUE 'Configuration_Error',
        csrf_token_missing       TYPE ty_exception_category VALUE 'CSRF_Token_Missing',
        framework                TYPE ty_exception_category VALUE 'Gateway_Framework_Error',
        metadata                 TYPE ty_exception_category VALUE 'Metadata_Error',
        metadata_outdated        TYPE ty_exception_category VALUE 'Metadata_on_Hub_outdated',
        none                     TYPE ty_exception_category VALUE 'No_Error',
        payload                  TYPE ty_exception_category VALUE 'Payload_Error',
        provider                 TYPE ty_exception_category VALUE 'Provider_Application_Error',
        repeatability            TYPE ty_exception_category VALUE 'Repeatablility',
        rfc                      TYPE ty_exception_category VALUE 'RFC_Error',
        srv_alias_cache_outdated TYPE ty_exception_category VALUE 'Service_Alias_Cache_Outdated',
        strict_check             TYPE ty_exception_category VALUE 'Strict_Check',
      END OF gcs_excep_categories.

    CONSTANTS:
      BEGIN OF gcs_http_status_codes,
        not_modified             TYPE  ty_http_status_code  VALUE '304',
        bad_request              TYPE  ty_http_status_code  VALUE '400',
        forbidden                TYPE  ty_http_status_code  VALUE '403',
        not_found                TYPE  ty_http_status_code  VALUE '404',
        method_not_allowed       TYPE  ty_http_status_code  VALUE '405',
        not_acceptable           TYPE  ty_http_status_code  VALUE '406',
        conflict                 TYPE  ty_http_status_code  VALUE '409',
        gone                     TYPE  ty_http_status_code  VALUE '410',
        precondition_failed      TYPE  ty_http_status_code  VALUE '412',
        unsupported_media_type   TYPE  ty_http_status_code  VALUE '415',
        unprocessable_entity     TYPE  ty_http_status_code  VALUE '422',
        locked                   TYPE  ty_http_status_code  VALUE '423',
        failed_dependency        TYPE  ty_http_status_code  VALUE '424',
        precondition_required    TYPE  ty_http_status_code  VALUE '428',
        sv_internal_server_error TYPE  ty_http_status_code  VALUE '500',
        sv_not_implemented       TYPE  ty_http_status_code  VALUE '501',
        sv_service_unavailable   TYPE  ty_http_status_code  VALUE '503',
      END OF gcs_http_status_codes.

    CONSTANTS:
      BEGIN OF gcs_message_type,
        error       TYPE bapi_mtype VALUE 'E',
        information TYPE bapi_mtype VALUE 'I',
        success     TYPE bapi_mtype VALUE 'S',
        warning     TYPE bapi_mtype VALUE 'W',
      END OF gcs_message_type.

    DATA:
      batch_content_id   TYPE string,
      exception_category TYPE ty_exception_category VALUE gcs_excep_categories-provider ##NO_TEXT,
      http_status_code   TYPE ty_http_status_code VALUE gcs_http_status_codes-sv_internal_server_error ##NO_TEXT,
      is_for_user        TYPE abap_bool VALUE abap_true ##NO_TEXT,
      message_container  TYPE REF TO not_released,
      message_target     TYPE string,
      message_targets    TYPE ty_t_message_target,
      sap_note_id        TYPE ty_sap_note_id,
      v4_response_info   TYPE REF TO object.
    METHODS constructor
      IMPORTING
        !textid             LIKE if_t100_message=>t100key OPTIONAL
        !previous           LIKE previous OPTIONAL
        !batch_content_id   LIKE batch_content_id OPTIONAL
        !exception_category TYPE ty_exception_category DEFAULT gcs_excep_categories-provider
        !http_status_code   TYPE ty_http_status_code DEFAULT gcs_http_status_codes-sv_internal_server_error
        !is_for_user        TYPE abap_bool DEFAULT abap_true
        !message_container  TYPE REF TO not_released OPTIONAL
        !message_target     TYPE string OPTIONAL
        !message_targets    TYPE ty_t_message_target OPTIONAL
        !sap_note_id        TYPE ty_sap_note_id OPTIONAL
        !v4_response_info   TYPE REF TO object OPTIONAL.
    METHODS get_message_container
      RETURNING
        VALUE(ro_message_container) TYPE REF TO not_released.

    METHODS if_message~get_text
        REDEFINITION.
ENDCLASS.

CLASS /iwbep/cx_gateway IMPLEMENTATION.
ENDCLASS.