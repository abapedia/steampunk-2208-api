INTERFACE if_xco_srvd_cacheable_origin PUBLIC.
  METHODS:
    enable_caching
      IMPORTING
        iv_service_definition_name TYPE sxco_srvd_object_name OPTIONAL
        io_version                 TYPE REF TO cl_xco_srvd_version OPTIONAL,
    disable_caching
      IMPORTING
        iv_service_definition_name TYPE sxco_srvd_object_name OPTIONAL
        io_version                 TYPE REF TO cl_xco_srvd_version OPTIONAL.
ENDINTERFACE.