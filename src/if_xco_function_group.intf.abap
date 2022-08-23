INTERFACE if_xco_function_group PUBLIC.
  INTERFACES:
    if_xco_ar_object.

  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_function_group WITH DEFAULT KEY.

  DATA:
    name             TYPE sxco_fg_object_name READ-ONLY,
    function_modules TYPE REF TO if_xco_fg_function_modules_fct READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_origin        TYPE REF TO cl_xco_fg_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_fg_content,
    function_module
      IMPORTING
        iv_name                   TYPE sxco_fm_name
      RETURNING
        VALUE(ro_function_module) TYPE REF TO if_xco_function_module,
    check_syntax
      RETURNING
        VALUE(ro_check_result) TYPE REF TO if_xco_dp_check_result.
ENDINTERFACE.