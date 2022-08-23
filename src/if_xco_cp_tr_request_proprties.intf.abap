INTERFACE if_xco_cp_tr_request_proprties PUBLIC.
  TYPES:
    tv_short_description TYPE c LENGTH 60,

    " Type for the complete properties of a transport request.
    BEGIN OF ts_properties,
      short_description TYPE tv_short_description,
      owner             TYPE REF TO if_xco_cp_user,
      target            TYPE REF TO if_xco_transport_target,
      status            TYPE REF TO cl_xco_tr_status,
      last_changed      TYPE REF TO if_xco_cp_tm_moment,
    END OF ts_properties.

  DATA:
    request TYPE REF TO if_xco_cp_tr_request READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE tv_short_description,
    get_owner
      RETURNING
        VALUE(ro_owner) TYPE REF TO if_xco_cp_user,
    get_target
      RETURNING
        VALUE(ro_target) TYPE REF TO if_xco_transport_target,
    get_status
      RETURNING
        VALUE(ro_status) TYPE REF TO cl_xco_tr_status,
    get_last_changed
      RETURNING
        VALUE(ro_last_changed) TYPE REF TO if_xco_cp_tm_moment,
    get
      RETURNING
        VALUE(rs_properties) TYPE ts_properties.
ENDINTERFACE.