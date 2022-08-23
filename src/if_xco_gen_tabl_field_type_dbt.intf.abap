INTERFACE if_xco_gen_tabl_field_type_dbt PUBLIC.
  METHODS:
    get_blueprint
      RETURNING
        VALUE(ro_blueprint) TYPE REF TO cl_xco_gen_tabl_bp_fld_typ_dbt.
ENDINTERFACE.