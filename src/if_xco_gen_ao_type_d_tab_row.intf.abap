INTERFACE if_xco_gen_ao_type_d_tab_row PUBLIC.
  METHODS:
    get_source
      RETURNING
        VALUE(ro_source) TYPE REF TO cl_xco_gen_ao_bp_type_source.
ENDINTERFACE.