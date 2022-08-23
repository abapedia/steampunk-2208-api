INTERFACE if_xco_srvd_exposure PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    service_definition TYPE REF TO if_xco_service_definition READ-ONLY,
    cds_entity         TYPE sxco_cds_object_name READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_version       TYPE REF TO cl_xco_srvd_version OPTIONAL
        io_origin        TYPE REF TO cl_xco_srvd_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    content
      IMPORTING
        io_version        TYPE REF TO cl_xco_srvd_version OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_srvd_exposure_content.
ENDINTERFACE.