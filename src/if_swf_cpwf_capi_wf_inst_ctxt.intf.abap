INTERFACE if_swf_cpwf_capi_wf_inst_ctxt
  PUBLIC.

  TYPES: cpwf_handle TYPE swf_cpwf_handle.

  METHODS get_instance_context
    IMPORTING
      iv_cpwf_handle TYPE cpwf_handle
      io_cp_json TYPE REF TO if_swf_cp_json OPTIONAL
    EXPORTING
      data TYPE data
    RAISING
      cx_swf_cpwf_api.
  METHODS update_instance_context
    IMPORTING
      iv_cpwf_handle TYPE cpwf_handle
      iv_body TYPE data
      io_cp_json TYPE REF TO if_swf_cp_json OPTIONAL
    RAISING
      cx_swf_cpwf_api.
  METHODS set_instance_context
    IMPORTING
      iv_cpwf_handle TYPE cpwf_handle
      iv_body TYPE data
      io_cp_json TYPE REF TO if_swf_cp_json OPTIONAL
    RAISING
      cx_swf_cpwf_api.
ENDINTERFACE.