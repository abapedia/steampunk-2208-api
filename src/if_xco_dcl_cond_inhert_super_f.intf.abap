INTERFACE if_xco_dcl_cond_inhert_super_f PUBLIC.
  METHODS:
    builder
      RETURNING
        VALUE(ro_inherit_super_cond_builder) TYPE REF TO if_xco_dcl_cb_inherit_super.
ENDINTERFACE.