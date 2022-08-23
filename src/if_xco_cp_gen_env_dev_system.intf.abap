INTERFACE if_xco_cp_gen_env_dev_system PUBLIC.
  TYPES:
    BEGIN OF ts_tabl,
      BEGIN OF for,
        database_table         TYPE REF TO if_xco_cp_gen_tabl_dbt_d_api,
        global_temporary_table TYPE REF TO if_xco_cp_gen_tabl_gtt_d_api,
        structure              TYPE REF TO if_xco_cp_gen_tabl_str_d_api,
      END OF for,
    END OF ts_tabl,

    BEGIN OF ts_api,
      bdef TYPE REF TO if_xco_cp_gen_bdef_d_api,
      clas TYPE REF TO if_xco_cp_gen_clas_d_api,
      dcls TYPE REF TO if_xco_cp_gen_dcls_d_api,
      ddls TYPE REF TO if_xco_cp_gen_ddls_d_api,
      ddlx TYPE REF TO if_xco_cp_gen_ddlx_d_api,
      devc TYPE REF TO if_xco_cp_gen_devc_d_api,
      doma TYPE REF TO if_xco_cp_gen_doma_d_api,
      dtel TYPE REF TO if_xco_cp_gen_dtel_d_api,
      fugr TYPE REF TO if_xco_cp_gen_fugr_d_api,
      intf TYPE REF TO if_xco_cp_gen_intf_d_api,
      msag TYPE REF TO if_xco_cp_gen_msag_d_api,
      srvb TYPE REF TO if_xco_cp_gen_srvb_d_api,
      srvd TYPE REF TO if_xco_cp_gen_srvd_d_api,
      tabl TYPE ts_tabl,
      ttyp TYPE REF TO if_xco_cp_gen_ttyp_d_api,
      xslt TYPE REF TO if_xco_cp_gen_xslt_d_api,
    END OF ts_api.

  DATA:
    transport TYPE sxco_transport READ-ONLY,
    for       TYPE ts_api READ-ONLY.

  METHODS:
    create_put_operation
      RETURNING
        VALUE(ro_put_operation) TYPE REF TO if_xco_cp_gen_d_o_put.
ENDINTERFACE.