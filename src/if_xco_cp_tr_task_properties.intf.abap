INTERFACE if_xco_cp_tr_task_properties PUBLIC.
  TYPES:
    tv_short_description TYPE c LENGTH 60,
    BEGIN OF ts_properties,
      short_description TYPE tv_short_description,
      owner             TYPE REF TO if_xco_cp_user,
      status            TYPE REF TO cl_xco_tr_status,
      last_changed      TYPE REF TO if_xco_cp_tm_moment,
    END OF ts_properties.

  DATA:
    task TYPE REF TO if_xco_cp_tr_task READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE tv_short_description,
    get_owner
      RETURNING
        VALUE(ro_owner) TYPE REF TO if_xco_cp_user,
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