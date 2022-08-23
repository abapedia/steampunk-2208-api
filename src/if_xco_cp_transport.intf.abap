INTERFACE if_xco_cp_transport PUBLIC.
  INTERFACES:
    if_xco_cts_change_scenario,

    if_xco_ar_object_source,
    if_xco_tr_entry_source.

  DATA:
    value TYPE sxco_transport READ-ONLY.

  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    get_type
      RETURNING
        VALUE(ro_type) TYPE REF TO cl_xco_tr_type,
    get_status
      RETURNING
        VALUE(ro_status) TYPE REF TO cl_xco_tr_status,
    get_request
      RETURNING
        VALUE(ro_request) TYPE REF TO if_xco_cp_tr_request,
    change_owner
      IMPORTING
        iv_owner TYPE sxco_user_name,
    delete,
    release.
ENDINTERFACE.