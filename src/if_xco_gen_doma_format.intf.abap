INTERFACE if_xco_gen_doma_format PUBLIC.
  METHODS:
    get_blueprint
      RETURNING
        VALUE(ro_blueprint) TYPE REF TO cl_xco_gen_doma_bp_format.
ENDINTERFACE.