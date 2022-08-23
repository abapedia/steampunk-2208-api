
INTERFACE if_proxy_client
  PUBLIC.

  METHODS execute
    IMPORTING
      !method_name TYPE abap_classname
      !use_xml TYPE abap_bool DEFAULT abap_false
    CHANGING
      !parmbind_tab TYPE abap_parmbind_tab
    RAISING
      cx_ai_system_fault
      cx_ai_application_fault.
ENDINTERFACE.