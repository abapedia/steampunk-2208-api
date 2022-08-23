INTERFACE if_xco_intf_cacheable_origin PUBLIC.
  METHODS:
    enable_caching
      IMPORTING
        iv_object_name TYPE sxco_ao_object_name OPTIONAL
        io_version     TYPE REF TO cl_xco_ao_version OPTIONAL,
    disable_caching
      IMPORTING
        iv_object_name TYPE sxco_ao_object_name OPTIONAL
        io_version     TYPE REF TO cl_xco_ao_version OPTIONAL.
ENDINTERFACE.