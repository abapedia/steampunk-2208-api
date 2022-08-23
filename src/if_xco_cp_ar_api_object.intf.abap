INTERFACE if_xco_cp_ar_api_object PUBLIC.

  DATA:
    aplo TYPE REF TO if_xco_ar_aplo_object_factory READ-ONLY,
    bdef TYPE REF TO if_xco_ar_bdef_object_factory READ-ONLY,
    clas TYPE REF TO if_xco_ar_clas_object_factory READ-ONLY,
    dcls TYPE REF TO if_xco_ar_dcls_object_factory READ-ONLY,
    ddls TYPE REF TO if_xco_ar_ddls_object_factory READ-ONLY,
    ddlx TYPE REF TO if_xco_ar_ddlx_object_factory READ-ONLY,
    devc TYPE REF TO if_xco_ar_devc_object_factory READ-ONLY,
    doma TYPE REF TO if_xco_ar_doma_object_factory READ-ONLY,
    dtel TYPE REF TO if_xco_ar_dtel_object_factory READ-ONLY,
    fugr TYPE REF TO if_xco_ar_fugr_object_factory READ-ONLY,
    intf TYPE REF TO if_xco_ar_intf_object_factory READ-ONLY,
    msag TYPE REF TO if_xco_ar_msag_object_factory READ-ONLY,
    smbc TYPE REF TO if_xco_ar_smbc_object_factory READ-ONLY,
    srvb TYPE REF TO if_xco_ar_srvb_object_factory READ-ONLY,
    srvd TYPE REF TO if_xco_ar_srvd_object_factory READ-ONLY,
    stob TYPE REF TO if_xco_ar_stob_object_factory READ-ONLY,
    tabl TYPE REF TO if_xco_ar_tabl_api_object READ-ONLY,
    ttyp TYPE REF TO if_xco_ar_ttyp_object_factory READ-ONLY,
    xslt TYPE REF TO if_xco_ar_xslt_object_factory READ-ONLY.
ENDINTERFACE.