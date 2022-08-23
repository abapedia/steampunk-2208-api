INTERFACE if_xco_ad_object PUBLIC.
  INTERFACES:
    if_xco_ar_object.

  DATA:
    name TYPE sxco_ad_object_name READ-ONLY.

  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    get_state
      IMPORTING
        io_read_state   TYPE REF TO cl_xco_ad_object_read_state
      RETURNING
        VALUE(ro_state) TYPE REF TO cl_xco_ad_object_state,
    check_syntax
      RETURNING
        VALUE(ro_check_result) TYPE REF TO if_xco_dp_check_result.
ENDINTERFACE.