INTERFACE if_xco_srvb_service PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    name            TYPE sxco_srvb_service_name READ-ONLY,
    service_binding TYPE REF TO if_xco_service_binding READ-ONLY,

    versions        TYPE REF TO if_xco_srvb_service_versions_f READ-ONLY.

  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,

    version
      IMPORTING
        iv_version        TYPE sxco_srvb_service_version
      RETURNING
        VALUE(ro_version) TYPE REF TO if_xco_srvb_service_version.
ENDINTERFACE.