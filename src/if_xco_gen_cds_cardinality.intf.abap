INTERFACE if_xco_gen_cds_cardinality PUBLIC.
  METHODS:
    get_blueprint
      RETURNING
        VALUE(ro_blueprint) TYPE REF TO cl_xco_gen_cds_bp_cardinality.
ENDINTERFACE.