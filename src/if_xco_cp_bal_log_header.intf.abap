INTERFACE if_xco_cp_bal_log_header PUBLIC.
  TYPES:
    tv_external_id TYPE c LENGTH 100,

    BEGIN OF ts_header,
      object                 TYPE REF TO if_xco_application_log_object,
      subobject              TYPE REF TO if_xco_aplo_subobject,
      external_id            TYPE tv_external_id,
      created_on             TYPE REF TO if_xco_cp_tm_moment,
      created_by             TYPE REF TO if_xco_cp_user,
      expiry_date            TYPE REF TO if_xco_cp_tm_date,
      keep_until_expiry_date TYPE abap_bool,
    END OF ts_header.

  DATA:
    log TYPE REF TO if_xco_cp_bal_log READ-ONLY.

  METHODS:
    get_object
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_application_log_object,

    get_subobject
      RETURNING
        VALUE(ro_subobject) TYPE REF TO if_xco_aplo_subobject,

    get_external_id
      RETURNING
        VALUE(rv_external_id) TYPE tv_external_id,

    get_created_on
      RETURNING
        VALUE(ro_created_on) TYPE REF TO if_xco_cp_tm_moment,

    get_created_by
      RETURNING
        VALUE(ro_created_by) TYPE REF TO if_xco_cp_user,

    get_expiry_date
      RETURNING
        VALUE(ro_expiry_date) TYPE REF TO if_xco_cp_tm_date,

    get_keep_until_expiry
      RETURNING
        VALUE(rv_keep_until_expiry) TYPE abap_bool,

    get
      RETURNING
        VALUE(rs_header) TYPE ts_header.
ENDINTERFACE.