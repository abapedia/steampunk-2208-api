INTERFACE if_xco_gen_ao_type_parameter PUBLIC.
  METHODS:
    get_blueprint
      RETURNING
        VALUE(ro_blueprint) TYPE REF TO cl_xco_gen_ao_bp_prmtr_type.
ENDINTERFACE.