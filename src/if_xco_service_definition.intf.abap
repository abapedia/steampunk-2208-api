INTERFACE if_xco_service_definition PUBLIC.
  INTERFACES:
    if_xco_ar_object.

  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_service_definition WITH DEFAULT KEY.

  ALIASES:
    get_package FOR if_xco_ar_object~get_package,
    get_namespace FOR if_xco_ar_object~get_namespace.

  DATA:
    name      TYPE sxco_srvd_object_name READ-ONLY,
    exposures TYPE REF TO if_xco_srvd_exposures_factory READ-ONLY.

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
        VALUE(ro_content) TYPE REF TO if_xco_srvd_content,
    exposure
      IMPORTING
        iv_cds_entity      TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_exposure) TYPE REF TO if_xco_srvd_exposure.
ENDINTERFACE.