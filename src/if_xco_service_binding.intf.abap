INTERFACE if_xco_service_binding PUBLIC.
  INTERFACES:
    if_xco_printable,

    if_xco_ar_object.

  ALIASES:
    get_package FOR if_xco_ar_object~get_package,
    get_namespace FOR if_xco_ar_object~get_namespace.

  DATA:
    name     TYPE sxco_srvb_object_name READ-ONLY,

    services TYPE REF TO if_xco_srvb_services_factory READ-ONLY.

  METHODS:
    check_syntax
      RETURNING
        VALUE(ro_check_result) TYPE REF TO if_xco_dp_check_result,

    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_service_binding_content,

    service
      IMPORTING
        iv_service_name   TYPE sxco_srvb_service_name OPTIONAL
      RETURNING
        VALUE(ro_service) TYPE REF TO if_xco_srvb_service.
ENDINTERFACE.