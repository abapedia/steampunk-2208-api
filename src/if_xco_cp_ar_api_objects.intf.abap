INTERFACE if_xco_cp_ar_api_objects PUBLIC.
  DATA:
    all  TYPE REF TO if_xco_ar_object_class READ-ONLY,

    aplo TYPE REF TO if_xco_cp_ar_aplo_oc_factory READ-ONLY,
    bdef TYPE REF TO if_xco_cp_ar_bdef_oc_factory READ-ONLY,
    clas TYPE REF TO if_xco_cp_ar_clas_oc_factory READ-ONLY,
    dcls TYPE REF TO if_xco_cp_ar_dcls_oc_factory READ-ONLY,
    ddls TYPE REF TO if_xco_cp_ar_ddls_oc_factory READ-ONLY,
    ddlx TYPE REF TO if_xco_cp_ar_ddlx_oc_factory READ-ONLY,
    devc TYPE REF TO if_xco_cp_ar_devc_oc_factory READ-ONLY,
    doma TYPE REF TO if_xco_cp_ar_doma_oc_factory READ-ONLY,
    dtel TYPE REF TO if_xco_cp_ar_dtel_oc_factory READ-ONLY,
    fugr TYPE REF TO if_xco_cp_ar_fugr_oc_factory READ-ONLY,
    intf TYPE REF TO if_xco_cp_ar_intf_oc_factory READ-ONLY,
    msag TYPE REF TO if_xco_cp_ar_msag_oc_factory READ-ONLY,
    smbc TYPE REF TO if_xco_cp_ar_smbc_oc_factory READ-ONLY,
    srvb TYPE REF TO if_xco_cp_ar_srvb_oc_factory READ-ONLY,
    srvd TYPE REF TO if_xco_cp_ar_srvd_oc_factory READ-ONLY,
    stob TYPE REF TO if_xco_cp_ar_stob_oc_factory READ-ONLY,
    tabl TYPE REF TO if_xco_cp_ar_tabl_oc_factory READ-ONLY,
    ttyp TYPE REF TO if_xco_cp_ar_ttyp_oc_factory READ-ONLY,
    xslt TYPE REF TO if_xco_cp_ar_xslt_oc_factory READ-ONLY.

  METHODS:
    where
      IMPORTING
        it_filters      TYPE sxco_t_ar_filters
      RETURNING
        VALUE(ro_where) TYPE REF TO if_xco_ar_object_class.
ENDINTERFACE.