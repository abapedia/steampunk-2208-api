INTERFACE if_xco_fg_cacheable_origin PUBLIC.
  METHODS:
    enable_caching
      IMPORTING
        iv_function_group_name TYPE sxco_fg_object_name OPTIONAL,
    disable_caching
      IMPORTING
        iv_function_group_name TYPE sxco_fg_object_name OPTIONAL.
ENDINTERFACE.