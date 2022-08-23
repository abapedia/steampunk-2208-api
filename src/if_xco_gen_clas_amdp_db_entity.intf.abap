INTERFACE if_xco_gen_clas_amdp_db_entity PUBLIC.
  METHODS:
    get_blueprint
      RETURNING
        VALUE(ro_blueprint) TYPE REF TO cl_xco_gen_clas_bp_amdp_db_ent.
ENDINTERFACE.