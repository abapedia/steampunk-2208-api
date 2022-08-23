INTERFACE if_xco_srvb_service_version PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    version TYPE sxco_srvb_service_version READ-ONLY,
    service TYPE REF TO if_xco_srvb_service READ-ONLY.

  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,

    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_srvb_service_version_co.
ENDINTERFACE.