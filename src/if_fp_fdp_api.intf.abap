INTERFACE if_fp_fdp_api
  PUBLIC.
  TYPES: BEGIN OF ts_select_key,
            name TYPE string,
            value TYPE string,
            data_type TYPE string,
           END OF ts_select_key,
           ty_service_definition TYPE char40,

           tt_select_keys TYPE STANDARD TABLE OF ts_select_key WITH KEY name.
  METHODS:
      read_to_data
        IMPORTING
          it_select TYPE tt_select_keys
          iv_language TYPE spras DEFAULT sy-langu
        RETURNING VALUE(rr_data) TYPE REF TO data
        RAISING
          cx_fp_fdp_error,
      read_to_xml
        IMPORTING
          it_select TYPE tt_select_keys
          iv_language TYPE spras DEFAULT sy-langu
        RETURNING VALUE(rv_xml) TYPE xstring
        RAISING
          cx_fp_fdp_error,
      get_keys
        RETURNING VALUE(rt_keys) TYPE tt_select_keys,
      get_xsd
        RETURNING VALUE(rv_xml) TYPE xstring
        RAISING
          cx_fp_fdp_error.

ENDINTERFACE.