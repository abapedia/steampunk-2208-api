INTERFACE if_fdt_cp_project_settings
  PUBLIC.

  TYPES:
    BEGIN OF ty_message,
      id          TYPE if_fdt_cp_external_types=>id,
      object_name TYPE string,
      msgid       TYPE sy-msgid,
      msgty       TYPE symsgty,
      msgno       TYPE sy-msgno,
      msgv1       TYPE string,
      msgv2       TYPE string,
      msgv3       TYPE string,
      msgv4       TYPE string,
    END OF ty_message.
  TYPES:
    tt_message TYPE TABLE OF ty_message WITH DEFAULT KEY.

  CLASS-METHODS perform_check
    IMPORTING
      !io_request TYPE REF TO if_fdt_cp_validation_operation
    EXPORTING
      !ev_success TYPE abap_bool
      !et_message TYPE tt_message
    RAISING
      cx_fdt_cp_utility_exceptions.
ENDINTERFACE.