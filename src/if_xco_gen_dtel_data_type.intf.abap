INTERFACE if_xco_gen_dtel_data_type PUBLIC.
  METHODS:
    get_blueprint
      RETURNING
        VALUE(ro_blueprint) TYPE REF TO cl_xco_gen_dtel_bp_data_type.
ENDINTERFACE.