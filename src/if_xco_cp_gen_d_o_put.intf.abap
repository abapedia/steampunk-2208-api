INTERFACE if_xco_cp_gen_d_o_put PUBLIC.
  TYPES:
    BEGIN OF ts_tabl,
      BEGIN OF for,
        database_table         TYPE REF TO if_xco_cp_gen_tabl_dbt_dopu_sc,
        global_temporary_table TYPE REF TO if_xco_cp_gen_tabl_gtt_dopu_sc,
        structure              TYPE REF TO if_xco_cp_gen_tabl_str_dopu_sc,
      END OF for,
    END OF ts_tabl,

    BEGIN OF ts_api,
      bdef TYPE REF TO if_xco_cp_gen_bdef_d_o_put_sct,
      clas TYPE REF TO if_xco_cp_gen_clas_d_o_put_sct,
      dcls TYPE REF TO if_xco_cp_gen_dcls_d_o_put_sct,
      ddls TYPE REF TO if_xco_cp_gen_ddls_d_o_put_sct,
      ddlx TYPE REF TO if_xco_cp_gen_ddlx_d_o_put_sct,
      doma TYPE REF TO if_xco_cp_gen_doma_d_o_put_sct,
      dtel TYPE REF TO if_xco_cp_gen_dtel_d_o_put_sct,
      intf TYPE REF TO if_xco_cp_gen_intf_d_o_put_sct,
      srvb TYPE REF TO if_xco_cp_gen_srvb_d_o_put_sct,
      srvd TYPE REF TO if_xco_cp_gen_srvd_d_o_put_sct,
      tabl TYPE ts_tabl,
      ttyp TYPE REF TO if_xco_cp_gen_ttyp_d_o_put_sct,
      xslt TYPE REF TO if_xco_cp_gen_xslt_d_o_put_sct,
    END OF ts_api.

  DATA:
    for TYPE ts_api READ-ONLY.

  METHODS:
    execute
      IMPORTING
        it_options       TYPE sxco_t_cp_gen_d_o_put_options OPTIONAL
      RETURNING
        VALUE(ro_result) TYPE REF TO if_xco_gen_o_put_result.
ENDINTERFACE.