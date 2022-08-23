INTERFACE if_xco_cp_bal_log_factory PUBLIC.
  METHODS:
    create
      IMPORTING
        iv_object      TYPE sxco_aplo_object_name
        iv_subobject   TYPE if_xco_aplo_subobject=>tv_name
        iv_external_id TYPE if_xco_cp_bal_log_header=>tv_external_id
        io_profile     TYPE REF TO if_xco_cp_bal_profile DEFAULT xco_cp_bal=>profile->standard
      RETURNING
        VALUE(ro_log)  TYPE REF TO if_xco_cp_bal_log,

    load
      IMPORTING
        iv_handle     TYPE sxco_bal_log_handle
        io_profile    TYPE REF TO if_xco_cp_bal_profile DEFAULT xco_cp_bal=>profile->standard
      RETURNING
        VALUE(ro_log) TYPE REF TO if_xco_cp_bal_log,

    delete
      IMPORTING
        iv_handle TYPE sxco_bal_log_handle.
ENDINTERFACE.