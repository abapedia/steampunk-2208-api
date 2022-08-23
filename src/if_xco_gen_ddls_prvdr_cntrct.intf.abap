INTERFACE if_xco_gen_ddls_prvdr_cntrct PUBLIC.
  METHODS:
    get_blueprint
      RETURNING
        VALUE(ro_blueprint) TYPE REF TO cl_xco_gen_ddls_bp_prvd_cntrct.
ENDINTERFACE.