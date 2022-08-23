INTERFACE if_xco_fm_cacheable_origin PUBLIC.
  METHODS:
    enable_caching
      IMPORTING
        iv_function_module_name TYPE sxco_fm_name OPTIONAL
        io_state                TYPE REF TO cl_xco_fm_state OPTIONAL,
    disable_caching
      IMPORTING
        iv_function_module_name TYPE sxco_fm_name OPTIONAL
        io_state                TYPE REF TO cl_xco_fm_state OPTIONAL.
ENDINTERFACE.